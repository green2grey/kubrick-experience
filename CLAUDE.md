# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

The Kubrick Experience is a static HTML/CSS/JavaScript website that creates an immersive web experience exploring Stanley Kubrick's cinematic vision through three films: *2001: A Space Odyssey*, *A Clockwork Orange*, and *The Shining*.

## Architecture & Structure

### Core Files
- `index-new.html` - Main website file with all content, styling, and scripts
- `index.html` - Legacy version (currently empty)
- Audio files:
  - `ElevenLabs_Untitled_Project.mp3` - 13-minute narration
  - `A Space Odyssey 2001 - Encounter with monolith (MUSIC).mp3` - Opening music
- `images/` - Film stills organized by movie (2001/, clockwork/, shining/, hal/)

### Technology Stack
- **Frontend**: Vanilla HTML5, CSS3, JavaScript (ES6+)
- **Styling**: Tailwind CSS (CDN), Custom CSS Variables
- **Animation**: GSAP with ScrollTrigger
- **Audio**: Howler.js, Web Audio API for visualization
- **Fonts**: Google Fonts (Inter, Space Grotesk)
- **Deployment**: GitHub Pages via Actions workflow

## Development Commands

### Local Development
```bash
# Python 3 server
python3 -m http.server 8000

# OR Node.js server
npx http-server -p 8000
```
Note: Local server required for audio files due to CORS policies.

### Deployment
```bash
# Initial setup (if not already a git repo)
./setup.sh

# Deploy to GitHub Pages
git add .
git commit -m "Update message"
git push
# GitHub Actions will automatically deploy via .github/workflows/static.yml
```

## Key Design Patterns

### CSS Custom Properties
The design system uses CSS variables for consistent theming:
- `--kubrick-red`, `--kubrick-orange` (signature colors)
- `--space-blue` (2001), `--clockwork-orange`, `--shining-red` (film-specific)
- Applied via utility classes and direct styling

### Animation Structure
GSAP animations follow a pattern of:
1. Initial state set in CSS or via `gsap.set()`
2. ScrollTrigger for scroll-based activation
3. Timeline animations for complex sequences
4. Performance optimization with `will-change` and GPU acceleration

### Section Organization
The site is organized into full-height sections:
- Film title sections (100vh with centered typography)
- Content blocks (max-width containers with responsive padding)
- Image sections (parallax-enabled full-bleed images)
- Quote sections (centered text with special styling)

## Audio Implementation

The site features:
- Optional 13-minute narration with play/pause controls
- Real-time audio waveform visualization
- Synchronized intro music for the monolith sequence
- Howler.js for cross-browser audio compatibility

## Performance Considerations

- Images should be optimized for web (currently using original film stills)
- GSAP animations use hardware acceleration where possible
- Lazy loading could be implemented for images below the fold
- Audio files are loaded on-demand, not preloaded

## Common Tasks

### Adding New Content Sections
1. Follow the existing pattern of `.page-section` or `.content-block`
2. Add corresponding GSAP animations in the JavaScript section
3. Ensure responsive typography using `clamp()` values

### Modifying Animations
1. Locate the GSAP timeline in the script section
2. Adjust timing, easing, or properties as needed
3. Test scroll triggers at different viewport sizes

### Updating Audio
1. Replace audio files maintaining the same filenames, OR
2. Update file references in the JavaScript audio initialization

### Changing Color Schemes
1. Modify CSS custom properties in the `:root` selector
2. Film-specific colors are namespaced (e.g., `--space-blue`)