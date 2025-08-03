# Kubrick Experience

An immersive web experience exploring Stanley Kubrick's cinematic vision through *2001: A Space Odyssey*, *A Clockwork Orange*, and *The Shining*.

## 🎬 Live Demo

Visit the live site: [https://YOUR-USERNAME.github.io/kubrick-experience/](https://YOUR-USERNAME.github.io/kubrick-experience/)

## 🌟 Features

- **Monolith Intro**: Opens with the iconic monolith from 2001, complete with the encounter music
- **Interactive Choice**: Choose to experience with or without the 13-minute video essay narration
- **Scrolling Animations**: GSAP-powered animations that reveal content as you scroll
- **Audio Visualization**: Real-time waveform display for the essay playback
- **Cinematic Design**: Bold typography and color schemes inspired by each film
- **Film-Specific Sections**: Deep dives into each movie with authentic imagery

## 🚀 Quick Start

### Option 1: Fork and Deploy (Easiest)

1. Fork this repository
2. Go to Settings → Pages
3. Select "Deploy from a branch"
4. Choose `main` branch and `/ (root)` folder
5. Click Save
6. Your site will be live at `https://YOUR-USERNAME.github.io/kubrick-experience/`

### Option 2: Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR-USERNAME/kubrick-experience.git
   cd kubrick-experience
   ```

2. Run a local server (required for audio files):
   ```bash
   # Python 3
   python3 -m http.server 8000
   
   # OR using Node.js
   npx http-server -p 8000
   ```

3. Open http://localhost:8000 in your browser

## 📁 Project Structure

```
kubrick-experience/
├── index.html                          # Main website file
├── ElevenLabs_Untitled_Project.mp3    # 13-minute video essay narration
├── A Space Odyssey 2001 - Encounter with monolith (MUSIC).mp3
├── Black_monolith.svg.png             # Monolith image for intro
└── Work and life of Stanley Kubrick — */  # Film stills and images
```


---

*"The very meaninglessness of life forces man to create his own meaning."* - Stanley Kubrick
