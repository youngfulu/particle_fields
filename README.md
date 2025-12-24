# Geometry Attractors Particles

A Three.js WebGPU particle system where particles are attracted to and orbit around 3D geometry surfaces.

## Features

- **Geometry-based attraction**: Particles dynamically find the closest point on any 3D geometry surface
- **Surface orbiting**: Particles orbit around the geometry surface using tangential forces
- **Real-time parameters**: Adjust attraction strength, surface distance, orbital motion, and more via GUI
- **WebGPU powered**: High-performance particle simulation using WebGPU compute shaders

## Requirements

- Modern browser with WebGPU support (Chrome 113+, Edge 113+, or Firefox Nightly with `dom.webgpu.enabled`)
- Three.js with WebGPU support

## Usage

### Option 1: Using CDN (Recommended for quick testing)

Simply open `particles-geometry-attraction.html` in a modern browser. The file uses CDN links for Three.js.

### Option 2: Local Three.js Build

If you have a local Three.js build:

1. Update the import map in `particles-geometry-attraction.html`:
```javascript
{
  "imports": {
    "three": "../build/three.webgpu.js",
    "three/webgpu": "../build/three.webgpu.js",
    "three/tsl": "../build/three.tsl.js",
    "three/addons/": "./jsm/"
  }
}
```

2. Place the file in your Three.js examples directory or adjust paths accordingly.

## Customizing Geometry

You can easily replace the default `TorusKnotGeometry` with any Three.js geometry:

```javascript
// Built-in geometries
const geometry = new THREE.BoxGeometry(1, 1, 1);
const geometry = new THREE.SphereGeometry(1, 32, 32);
const geometry = new THREE.TorusGeometry(1, 0.3, 16, 100);

// Or load external models
import { GLTFLoader } from 'three/addons/loaders/GLTFLoader.js';
const loader = new GLTFLoader();
const gltf = await loader.loadAsync('path/to/model.glb');
const geometry = gltf.scene.children[0].geometry;
```

## Parameters

- **geometryMassExponent**: Mass of the geometry (affects attraction strength)
- **particleGlobalMassExponent**: Base mass of particles
- **maxSpeed**: Maximum velocity of particles
- **velocityDamping**: Velocity damping factor (0-1)
- **spinningStrength**: Strength of orbital/tangential forces
- **scale**: Particle visual size
- **boundHalfExtent**: Boundary box size
- **attractionStrength**: How strongly particles are attracted to the surface
- **surfaceDistance**: Preferred distance from surface
- **colorA/B**: Particle colors (gradient based on velocity)

## Performance

The current implementation uses a brute-force search to find the closest geometry vertex. For best performance:

- Use geometries with 500-1000 vertices or fewer
- The code automatically samples up to 500 vertices from complex geometries
- For very complex models, consider reducing vertex count or implementing spatial acceleration structures

## Controls

- **Mouse**: Orbit camera around the scene
- **GUI**: Adjust parameters in real-time using the Inspector panel

## License

MIT License - feel free to use in your projects!

## Credits

Based on Three.js WebGPU attractors particles example, modified to work with arbitrary 3D geometry instead of point attractors.

