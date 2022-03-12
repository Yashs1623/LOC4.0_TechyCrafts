const {Router} = require("express");
const { route } = require("express/lib/application");
const router = Router();
const authController = require("../controllers/authController");
const {auth} = require("../middleware/auth");
const {ngo_auth} = require("../middleware/ngo_auth");

router.put("/update", auth,  authController.updateUser);
router.post("/signup", authController.signup_post);
router.get("/me",auth, authController.getProfile);
router.post("/login", authController.login_post);
router.post("/ngosignup" , authController.ngoSignup);
router.post("/fundRaise", authController.fundRaisePost);
router.get('/getfundRaise', auth, authController.getFundRaise);
router.post('/createEvent', authController.createEvent);
router.get('/getEvents',auth, authController.getEvents)
// router.post("/logout",auth, authController.logout_post);


module.exports = router;