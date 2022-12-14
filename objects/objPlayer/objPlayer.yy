{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "objPlayer",
  "spriteId": {
    "name": "sprPlayerIdleR",
    "path": "sprites/sprPlayerIdleR/sprPlayerIdleR.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": {
    "name": "sprPlayerHitbox",
    "path": "sprites/sprPlayerHitbox/sprPlayerHitbox.yy",
  },
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"objWall","path":"objects/objWall/objWall.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"objCameraBox","path":"objects/objCameraBox/objCameraBox.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"objJumpPad","path":"objects/objJumpPad/objJumpPad.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"objSavePoint","path":"objects/objSavePoint/objSavePoint.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"objKill","path":"objects/objKill/objKill.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"objGoal","path":"objects/objGoal/objGoal.yy",},},
  ],
  "properties": [],
  "overriddenProperties": [],
  "parent": {
    "name": "Gameplay",
    "path": "folders/Objects/Gameplay.yy",
  },
}