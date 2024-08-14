# Pinball Project

This project is a custom pinball machine implementation using the Mission Pinball Framework (MPF).

## Setup on the RPi

1. A startup script (`/home/Weijtmans/start_pinball.sh`) is created to set up the environment and run MPF.
2. The system is configured to auto-login to the Weijtmans user account.
3. The `.bash_profile` is modified to run the startup script on login.

### Changing the Startup Command

To change the MPF startup command (e.g., from `mpf both -X -V` to `mpf both`):

1. Edit the startup script:
   ```bash
   nano /home/Weijtmans/start_pinball.sh
   ```
2. Find the line that runs MPF (near the bottom of the file) and modify it as needed:
   ```bash
   mpf both  # Remove -X -V or add other options as needed
   ```
3. Save the file and exit the editor.
4. Reboot the system for changes to take effect:
   ```bash
   sudo reboot
   ```

### Activate the Virtual Environment

```bash
pyenv activate 3.9.18/envs/mpf
```

### Troubleshooting

If you encounter issues with the autostart:

1. Check the system logs:
   ```bash
   journalctl -b
   ```
2. Verify the contents of the startup script:
   ```bash
   cat /home/Weijtmans/start_pinball.sh
   ```
3. Ensure the script is executable:
   ```bash
   ls -l /home/Weijtmans/start_pinball.sh
   ```

## Manual Operation

If you need to run MPF manually or use different commands, here are some useful operations:

### MPF Commands

- Start MPF Engine and Media Controller:
  ```bash
  mpf both
  ```

- Verbose Logging:
  ```bash
  mpf both -V
  ```

- Virtual Testing (ignore hardware):
  ```bash
  mpf both -X
  ```

- Ignore Media Controller:
  ```bash
  mpf both -b
  ```

- Debug Mode:
  ```bash
  mpf -t -b
  ```

## Development Roadmap

- [ ] Implement Lights
- [ ] Design and integrate Artwork
- [ ] Develop High Score system
- [ ] Implement Tilt mechanism
- [ ] Create Bonus scoring system
- [ ] Develop Service mode
- [ ] Design and implement game Modes
- [ ] Integrate Magnets
