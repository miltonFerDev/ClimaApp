#!/bin/bash

PACKAGE_DIR="com/ClimaApp"
BASE="app/src/main/java/$PACKAGE_DIR"

DIRS=(
  "$BASE/ui/cities"
  "$BASE/ui/weather"
  "$BASE/ui/shared"
  "$BASE/viewmodel"
  "$BASE/model"
  "$BASE/data/repository"
  "$BASE/data/repository/mock"
  "$BASE/data/datasource"
  "$BASE/navigation"
  "$BASE/util"
  "$BASE/storage"
  "$BASE/location"
  "app/src/test/java/$PACKAGE_DIR/viewmodel"
  "app/src/test/java/$PACKAGE_DIR/repository"
  "app/src/androidTest/java/$PACKAGE_DIR/ui"
)

FILES=(
  "$BASE/ui/cities/CitiesScreen.kt"
  "$BASE/ui/cities/CityItem.kt"
  "$BASE/ui/cities/CitiesState.kt"
  "$BASE/ui/cities/CitiesIntent.kt"
  "$BASE/ui/weather/WeatherScreen.kt"
  "$BASE/ui/weather/ForecastGraph.kt"
  "$BASE/ui/weather/WeatherState.kt"
  "$BASE/ui/weather/WeatherIntent.kt"
  "$BASE/ui/shared/LoadingIndicator.kt"
  "$BASE/ui/shared/AppButton.kt"
  "$BASE/ui/shared/ErrorMessage.kt"
  "$BASE/viewmodel/CitiesViewModel.kt"
  "$BASE/viewmodel/WeatherViewModel.kt"
  "$BASE/model/City.kt"
  "$BASE/model/WeatherForecast.kt"
  "$BASE/model/TodayWeather.kt"
  "$BASE/data/repository/CityRepository.kt"
  "$BASE/data/repository/WeatherRepository.kt"
  "$BASE/data/repository/mock/CityRepositoryMock.kt"
  "$BASE/data/repository/mock/WeatherRepositoryMock.kt"
  "$BASE/data/datasource/ApiService.kt"
  "$BASE/data/datasource/WeatherApiClient.kt"
  "$BASE/navigation/NavGraph.kt"
  "$BASE/navigation/Routes.kt"
  "$BASE/util/Constants.kt"
  "$BASE/util/Extensions.kt"
  "$BASE/util/UiUtils.kt"
  "$BASE/storage/UserPreferences.kt"
  "$BASE/location/LocationService.kt"
  "app/src/test/java/$PACKAGE_DIR/viewmodel/CitiesViewModelTest.kt"
  "app/src/test/java/$PACKAGE_DIR/viewmodel/WeatherViewModelTest.kt"
  "app/src/test/java/$PACKAGE_DIR/repository/CityRepositoryMockTest.kt"
  "app/src/androidTest/java/$PACKAGE_DIR/ui/CitiesScreenTest.kt"
  "app/src/androidTest/java/$PACKAGE_DIR/ui/WeatherScreenTest.kt"
)

echo "🔧 Creando carpetas..."
for dir in "${DIRS[@]}"; do
  mkdir -p "$dir"
  echo "✅ $dir"
done

echo "📄 Creando archivos base..."
for file in "${FILES[@]}"; do
  touch "$file"
  echo "📄 $file"
done

echo "🎉 Estructura creada con éxito. Refrescá Android Studio para ver los cambios."
