const {Router} = require("express");
const router = Router();
const authController = require("../controllers/authController");
const {auth} = require("../middleware/auth")

router.put("/update", auth,  authController.updateUser);
router.post("/signup", authController.signup_post);
router.get("/me", authController.getProfile);
router.post("/login", authController.login_post);
router.post("/ngoSignup" , authController.ngoSignup);
// router.post("/logout",auth, authController.logout_post);


module.exports = router;