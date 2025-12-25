# Troubleshooting: Particles Not Visible

If you don't see particles, try these steps:

## 1. Check Browser Console

Open the browser console (F12) and check for errors. Look for:
- Import/module errors
- WebGPU errors
- Three.js errors

## 2. Verify WebGPU Support

Even if your browser supports WebGPU, check:
```javascript
// In browser console:
navigator.gpu
```

Should return a GPU object, not null.

## 3. CDN Issues

The Three.js WebGPU build might not be available via CDN. If you see import errors:

**Option A: Use a local server**
```bash
# Python 3
python3 -m http.server 8000

# Node.js (with http-server)
npx http-server

# Then open: http://localhost:8000/particles-geometry-attraction.html
```

**Option B: Download Three.js locally**
1. Clone Three.js repository
2. Build WebGPU version
3. Update import map to point to local files

## 4. Increase Particle Size

If particles are too small, in the GUI panel, increase the `scale` parameter (default is 0.05).

## 5. Check Camera Position

Try adjusting the camera:
- Use mouse to orbit around (drag)
- Scroll to zoom in/out
- Check if you see the wireframe geometry

## 6. Test with Simpler Setup

Comment out the geometry attraction logic temporarily and see if basic particles render.

## 7. Browser Compatibility

WebGPU support:
- Chrome 113+ (recommended)
- Edge 113+
- Firefox Nightly (with flags enabled)

Make sure you're using a recent version.

