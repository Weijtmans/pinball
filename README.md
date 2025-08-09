# 🏝️ Tiki Retreat Pinball Machine

<div align="center">
  <img src="https://img.shields.io/badge/Mission%20Pinball%20Framework-0.57.2-blue?style=for-the-badge" alt="MPF Version">
  <img src="https://img.shields.io/badge/Python-3.9+-yellow?style=for-the-badge" alt="Python Version">
  <img src="https://img.shields.io/badge/Platform-Raspberry%20Pi-red?style=for-the-badge" alt="Platform">
  <img src="https://img.shields.io/badge/Hardware-FAST%20Pinball-green?style=for-the-badge" alt="Hardware">
</div>

A custom tropical-themed pinball machine built with the Mission Pinball Framework (MPF). Experience the ultimate island getaway with exciting gameplay featuring multiple flippers, drop targets, multiball modes, and immersive tiki-inspired visuals and sounds.

## ✨ Features

### 🎯 **Game Mechanics**
- **4 Flippers**: Main left/right flippers plus upper left/right flippers
- **Multiple Drop Target Banks**: Top (5 targets), Left (3 targets), Right (3 targets)
- **Orbit Shots**: Sequence-based scoring system
- **Mini Playfield**: Secondary play area with 4 switches
- **Ball Save System**: 10-second protection with grace period
- **Multiball Mode**: High-scoring multiball gameplay
- **Multiplayer Support**: Up to 4 players, 3 balls per game

### 🔧 **Hardware Components**
- **FAST Pinball Platform**: Modern pinball control system
- **FP-I/O Boards**: 1616, 3208, and 0024 configurations
- **Comprehensive Switch Matrix**: 40+ switches including trough, targets, bumpers
- **LED System**: Custom lighting with fade effects
- **Audio System**: Immersive sound effects and tropical music

### 🎨 **Visual & Audio**
- **Custom Tiki Theme**: Tropical island aesthetic
- **Dynamic Display**: 1280x390 resolution with Color DMD effects
- **Custom Fonts**: Tropika Island font family
- **Sound Design**: Tropical background music and voice callouts
- **Light Shows**: Synchronized LED animations for attract mode and gameplay

## 🚀 Quick Start

### Prerequisites
- Python 3.9+
- Mission Pinball Framework
- FAST Pinball hardware (or virtual mode for testing)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/weijtmans/pinball.git
   cd pinball
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the pinball machine**
   ```bash
   # Full hardware mode
   mpf both
   
   # Virtual testing mode (no hardware required)
   mpf both -X
   
   # Verbose logging for debugging
   mpf both -V
   ```

## 🎮 Game Modes

### 🌴 **Base Mode**
The main gameplay mode featuring:
- Progressive scoring system
- Ball save protection
- Shot combo scoring
- Background music and sound effects

### 🎪 **Attract Mode**
Eye-catching display when idle:
- Rotating light shows
- Display animations
- Attracts players to start a game

### 🌊 **Multiball Mode**
High-energy gameplay with multiple balls

### 🎯 **Drop Target Mode**
Special mode triggered by completing drop target banks

### 🚀 **Orbit Mode**
Triggered by completing orbit sequences

## 🔧 Hardware Configuration

### Control Boards
- **FP-I/O-1616**: 16 inputs, 16 outputs
- **FP-I/O-3208**: 32 inputs, 8 outputs  
- **FP-I/O-0024**: Cabinet controls
- **FP-EXP-0071**: LED expansion board
- **FP-EXP-2000**: Neuron expansion board

### Key Components
- **Ball Trough**: 6-ball capacity with jam detection
- **Flippers**: Dual-coil flippers with EOS switches
- **Slingshots**: 3 slingshots for dynamic gameplay
- **Bumpers**: 3 pop bumpers
- **Kickouts**: Upper and middle ball kickout mechanisms

## 🖥️ Development

### Project Structure
```
pinball/
├── config/              # Main configuration files
├── modes/               # Game mode definitions
│   ├── attract/         # Attract mode
│   ├── base/           # Base gameplay mode
│   ├── multiball/      # Multiball mode
│   └── orbit/          # Orbit mode
├── sounds/             # Audio files
│   ├── music/          # Background music
│   ├── sfx/            # Sound effects
│   └── voice/          # Voice callouts
├── fonts/              # Custom Tiki fonts
├── monitor/            # Monitoring configuration
└── rpi/               # Raspberry Pi scripts
```

### Useful Commands

```bash
# Start with media controller
mpf both

# Debug mode without media controller
mpf -t -b

# Virtual mode (ignore hardware)
mpf both -X

# Text-based monitoring
mpf monitor
```

## 🔧 Raspberry Pi Setup

The machine runs on a Raspberry Pi with automatic startup:

1. **Auto-login** configured for seamless operation
2. **Startup script** (`start_pinball.sh`) handles environment setup
3. **Pyenv environment** management for Python dependencies

### Modifying Startup Behavior

Edit the startup script to change MPF parameters:
```bash
nano /home/Weijtmans/start_pinball.sh
```

## 🛠️ Development Roadmap

- [ ] **Lights Implementation**: Complete LED system integration
- [ ] **Artwork Design**: Custom backglass and playfield art
- [ ] **High Score System**: Persistent high score tracking
- [ ] **Tilt Mechanism**: Anti-cheating tilt detection
- [ ] **Bonus Scoring**: End-of-ball bonus calculations
- [ ] **Service Mode**: Maintenance and diagnostic tools
- [ ] **Advanced Game Modes**: Complex rule sets and objectives
- [ ] **Magnet Integration**: Under-playfield magnets for special effects

## 🎵 Audio Credits

The machine features tropical-themed audio including:
- Background music: "Waikiki" theme
- Voice callouts: Custom recorded phrases
- Sound effects: Ocean waves and tropical ambience

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests for improvements.

### Development Guidelines
- Follow MPF configuration standards
- Test changes in virtual mode first
- Document new features and modes
- Keep configuration files well-commented

## 📄 License

This project is open source. Please respect the Mission Pinball Framework licensing terms.

## 🆘 Support

For questions about:
- **MPF Configuration**: Check the [MPF Documentation](https://docs.missionpinball.org/)
- **Hardware Issues**: Consult [FAST Pinball Support](https://fastpinball.com/)
- **This Project**: Open an issue in this repository

---

<div align="center">
  <p><strong>Built with ❤️ using Mission Pinball Framework</strong></p>
  <p>🏝️ <em>Escape to your own tropical pinball paradise</em> 🏝️</p>
</div>