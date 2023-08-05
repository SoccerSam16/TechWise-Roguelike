extends Node

var node_creation_parent = null
var trackingMissleTarget = null
var homingBulletUnlocked = false
var closeEnemies = []
var nearestEnemy = null

#enemys killed
var points = 0

# upgradable stats
var fireRate = .1
var bulletSpeed = 500
var bulletHealth = 0
var bulletDamageMultiplier = 0
var knockback = 0

var playerMovementSpeed = 300
var playerHealth = 15
var boostCapacity = 2
var boostValue = 100

#	'speed':  25,
#	'boostValue': 25,
#	'boostCapacity': 1,
#	'maxHealth': 2,
#	'fireRate': 0.15,
#	'knockback': 5,
#	'bulletPenetration': 1,
#	'bulletDamage': 1,
#	'bulletSpeed': 100,



#Skill Tree
#onready var turretIdentifiers = ['turret', 'barrel2', 'barrel3', 'barrel4', 'bigBullet', 'bigBullet2Direction', 
#'bigBullet2Barrel', '2direction', '3direction', '4direction']

var unlockedSkills = ['first', ]
#var unlockedSkills = ['first',  'turret', 'bigBullet', 'bigBullet2Direction']
#var unlockedSkills = ['first',  'turret', 'barrel2', 'barrel3', 'barrel4']
#var unlockedSkills = ['first',  'turret', '2direction', '3direction', '4direction']

var selectedButton = null
var skillUnlockPoints = 0

func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
