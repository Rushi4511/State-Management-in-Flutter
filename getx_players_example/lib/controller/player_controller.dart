import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_players_example/model/Player.dart';

class PlayerController extends GetxController {
  Rx<Player> playerObj =
      Player(playerName: "Rohit", playerRole: "Batsman", team: "India").obs;


    void changeData(String playerName, String playerRole) {
    playerObj.update((obj) {
      obj!.playerName = playerName;
      obj.playerRole = playerRole;
    });
  }

  void changeTeam(String team) {
    playerObj.update((obj) {
      obj!.team = team;
      
    });
  }
}
