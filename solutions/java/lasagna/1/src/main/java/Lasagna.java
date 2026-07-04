public class Lasagna {
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
        return 40;
    }
    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int elapsed_time) {
      return this.expectedMinutesInOven() - elapsed_time;
    }
    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int number_of_layer) {
        return 2 * number_of_layer;
    }

    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int number_of_layers, int elapsed_time){
        return this.preparationTimeInMinutes(number_of_layers) + elapsed_time ;
    }
}
