package com.project.musicwebbe.controller.auth;

import com.project.musicwebbe.dto.playlistDTO.PlaylistDTO;
import com.project.musicwebbe.entities.PlayListSong;
import com.project.musicwebbe.entities.Playlist;
import com.project.musicwebbe.entities.permission.AppUser;
import com.project.musicwebbe.service.permission.IUserService;
import com.project.musicwebbe.service.permission.impl.UserService;
import com.project.musicwebbe.service.playlist.impl.PlaylistService;
import com.project.musicwebbe.service.song.impl.SongService;
import com.project.musicwebbe.util.ConvertEntityToDTO;
import com.project.musicwebbe.util.GetCurrentUser;
import com.project.musicwebbe.util.SortList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Random;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/auth/playlists")
public class PlaylistAuthRestController {

    @Autowired
    private IUserService userService;
    @Autowired
    private PlaylistService playlistService;
    @Autowired
    private SongService songService;
    @Autowired
    private ConvertEntityToDTO convertEntityToDTO;
    @Autowired
    private GetCurrentUser getCurrentUser;

    @GetMapping
    public ResponseEntity<List<Playlist>> getAllPlaylists() {
        List<Playlist> playlists = playlistService.findAll();
        if (playlists.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(playlists);
    }

    @GetMapping("/favorites")
    public ResponseEntity<Page<PlaylistDTO>> getFavoritePlaylists(
            @RequestParam(name = "sort", defaultValue = "") String sort,
            @RequestParam(name = "direction", defaultValue = "ASC") String direction,
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "size", defaultValue = "100") int size
    ) {
        if (page < 0) {
            page = 0;
        }
        if (size < 0) {
            size = 100;
        }
        AppUser user = getCurrentUser.getUser();
        if (user == null) {
            return ResponseEntity.status(401).build();
        }

        List<Sort.Order> orders = new ArrayList<>();
        switch (sort) {
            case "title":
                orders.add(SortList.createSortOrder("title", direction));
                break;
            default:
                orders.add(SortList.createSortOrder("f.addedAt", direction));
        }
        PageRequest pageRequest = PageRequest.of(page, size, Sort.by(orders));
        Page<Playlist> playlists = playlistService.searchAllFavoritePlaylistsByUserId(user.getUserId(), pageRequest);
        if (playlists.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        Page<PlaylistDTO> playlistDTOS = playlists.map(convertEntityToDTO::convertToPlaylistDTO);
        return ResponseEntity.ok(playlistDTOS);
    }

    @PostMapping
    public ResponseEntity<?> createPlaylist(@RequestBody Playlist playlist, @RequestParam Long userId) {
        AppUser currentUser = userService.findById(userId);
        if (currentUser == null) {
            return ResponseEntity.badRequest().body("User không tồn tại");
        }

        playlist.setAppUser(currentUser);
        String playlistCodeDefault = "MUSIC-";
        String randomLetters = generateRandomString();
        playlist.setDateCreate(LocalDateTime.now());
        playlist.setPlaylistCode(playlistCodeDefault + randomLetters);

        for (PlayListSong playListSong : playlist.getPlayListSongs()) {
            playListSong.setDateAdd(LocalDateTime.now());
            playListSong.setPlaylist(playlist);
        }

        playlistService.save(playlist);
        return ResponseEntity.ok(200);
    }


    @PutMapping("/update/{playlistId}")
    public ResponseEntity<?> updatePlaylist(@PathVariable Long playlistId, @RequestBody Playlist playlist) {
        Playlist existingPlaylist = playlistService.findById(playlistId);
        if (existingPlaylist == null) {
            return ResponseEntity.notFound().build();
        }
        System.out.print(playlist.getPlayListSongs());
        Set<Long> currentSongIds = existingPlaylist.getPlayListSongs().stream()
                .map(song -> song.getSong().getSongId())
                .collect(Collectors.toSet());

        for (PlayListSong newSong : playlist.getPlayListSongs()) {
            if (newSong.getSong() == null || newSong.getSong().getSongId() == null) {
                System.out.println("bug");
            }
            if (!currentSongIds.contains(newSong.getSong().getSongId())) {
                newSong.setDateAdd(LocalDateTime.now());
                newSong.setPlaylist(existingPlaylist);
                existingPlaylist.getPlayListSongs().add(newSong);
            }
        }
        System.out.print(existingPlaylist.getPlayListSongs());
        playlistService.save(existingPlaylist);
        return ResponseEntity.ok(200);
    }



    @PutMapping("remove/{playlistId}")
    public ResponseEntity<?> removePlaylist(@PathVariable Long playlistId) {
        try {
            Playlist existingPlaylist = playlistService.findById(playlistId);
            if (existingPlaylist == null) {
                return ResponseEntity.notFound().build();
            }
            playlistService.deletePlaylistSongs(playlistId);
            playlistService.deletePlaylist(playlistId);
        } catch (Exception e) {
            throw new RuntimeException("Error occurred while removing playlist", e);
        }
        return ResponseEntity.noContent().build();
    }


    private String generateRandomString() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        Random random = new Random();
        StringBuilder result = new StringBuilder(5);

        for (int i = 0; i < 5; i++) {
            result.append(characters.charAt(random.nextInt(characters.length())));
        }

        return result.toString();
    }


}
