# Pinball Project

## Commands

- **Activate the Virtual Environment:**
  ```bash
  source pinball2/bin/activate
  ```
  This command activates the virtual environment for your project.

- **Start MPF Engine and Media Controller:**
  ```bash
  mpf both
  ```
  Starts both the MPF engine and media controller at the same time.

- **Verbose Logging:**
  ```bash
  mpf both -V
  ```
  Use `-V` for verbose logging to the console.

- **Virtual Testing:**
  ```bash
  mpf both -X
  ```
  Use `-X` to ignore hardware and platform settings, useful for virtual testing using smart virtual.

- **Ignore Media Controller:**
  ```bash
  mpf both -b
  ```
  Use `-b` to ignore the media controller.

- **Debug Mode:**
  ```bash
  mpf -t -b
  ```
  Use this command to debug, which runs MPF in test mode and ignores the media controller.

- **Standard Startup Command:**
  ```bash
  mpf both -V
  ```
  This is your go-to command to start MPF with verbose logging.

## Running MPF at Boot

To run `mpf both -X -V` automatically at boot, follow these steps:

1. **Create a Script:**
   - File: `/usr/local/bin/run_mpf.sh`
   - Content:
     ```bash
     #!/bin/bash
     mpf both -X -V
     ```
   - Make it executable:
     ```bash
     sudo chmod +x /usr/local/bin/run_mpf.sh
     ```

2. **Create a Systemd Service:**
   - File: `/etc/systemd/system/run-mpf.service`
   - Content:
     ```bash
     [Unit]
     Description=Run MPF Command at Boot

     [Service]
     ExecStart=/usr/local/bin/run_mpf.sh
     Restart=always
     User=root

     [Install]
     WantedBy=multi-user.target
     ```
   - Enable and start the service:
     ```bash
     sudo systemctl enable run-mpf.service
     sudo systemctl start run-mpf.service
     ```

3. **Updating the Command:**
   - To update the boot command, edit `/usr/local/bin/run_mpf.sh`.
   - Restart the service after updating:
     ```bash
     sudo systemctl restart run-mpf.service
     ```

## Todo

- Lights
- Artwork
- High score
- Tilt
- Bonus
- Service mode
- Modes
- Magnets
