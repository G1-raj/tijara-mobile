class VehiclesModel {
  final String? id;
  final String? vehicleType;
  final String? make;
  final String? model;
  final int? year;
  final int? mileage;
  final String? fuelType;
  final String? transmissionType;
  final String? color;
  final String? condition;
  final List<dynamic> features;
  final String? interiorColor;
  final String? engine;
  final String? warranty;
  final int? previousOwners;
  final String? listingId;
  final dynamic brakeType;
  final String? engineSize;
  final bool? abs;
  final List<dynamic> accessibilityFeatures;
  final bool? accidentFree;
  final bool? adaptiveCruiseControl;
  final bool? adaptiveHeadlights;
  final dynamic additionalNotes;
  final bool? airConditioning;
  final bool? airQualitySensor;
  final dynamic airbags;
  final dynamic aluminumRims;
  final bool? ambientLighting;
  final bool? androidAuto;
  final dynamic androidCar;
  final bool? appleCarPlay;
  final dynamic armrest;
  final bool? autoDimmingMirrors;
  final dynamic automaticDazzlingInteriorMirrors;
  final dynamic automaticEmergencyBraking;
  final bool? automaticHighBeams;
  final dynamic automaticStartStop;
  final bool? blindSpotMonitor;
  final bool? bluetooth;
  final dynamic bodyStyle;
  final dynamic bodyType;
  final List<dynamic> brakeSystem;
  final dynamic burglarAlarmSystem;
  final dynamic busType;
  final List<dynamic> cabFeatures;
  final bool? camera360;
  final dynamic cargoVolume;
  final bool? cdPlayer;
  final dynamic centralLocking;
  final List<dynamic> certifications;
  final bool? climateControl;
  final List<dynamic> comfortFeatures;
  final List<dynamic> communicationSystem;
  final dynamic cruiseControl;
  final dynamic curtainAirbags;
  final List<dynamic> customFeatures;
  final bool? customsCleared;
  final String? cylinders;
  final dynamic dabRadio;
  final bool? dashCam;
  final dynamic daytimeRunningLights;
  final dynamic deadAngleAssistant;
  final dynamic displacement;
  final dynamic distanceTempomat;
  final dynamic distanceWarning;
  final String? driveSystem;
  final String? driveType;
  final dynamic driverAirbag;
  final bool? dualZoneClimate;
  final bool? dvdPlayer;
  final dynamic electricSeats;
  final dynamic electricalSideMirrors;
  final String? electricalSystem;
  final dynamic electricalWindowLifter;
  final List<dynamic> electronics;
  final bool? emergencyBrakeAssist;
  final dynamic emergencyCallSystem;
  final dynamic emergencyExits;
  final String? emissions;
  final dynamic engineConfiguration;
  final dynamic engineManufacturer;
  final dynamic engineModel;
  final dynamic enginePowerOutput;
  final List<String> engineSpecs;
  final dynamic engineType;
  final List<dynamic> entertainmentSystem;
  final dynamic esp;
  final List<dynamic> exteriorFeatures;
  final dynamic fatigueWarningSystem;
  final bool? fogLights;
  final dynamic frameType;
  final dynamic frontAirbags;
  final List<String> frontAttachments;
  final List<dynamic> frontSuspension;
  final dynamic fuelTankCapacity;
  final dynamic glarelessHighBeam;
  final dynamic handlebarType;
  final dynamic handsFreeCalling;
  final dynamic headUpDisplay;
  final dynamic headlightCleaning;
  final bool? heatedSeats;
  final dynamic highBeamAssistant;
  final int? hitchCapacity;
  final int? horsepower;
  final int? hours;
  final int? hydraulicFlow;
  final String? hydraulicSystem;
  final dynamic immobilizer;
  final dynamic importStatus;
  final List<dynamic> instrumentCluster;
  final String? insuranceType;
  final dynamic integratedMusicStreaming;
  final dynamic isofix;
  final bool? keylessEntry;
  final dynamic kneeAirbags;
  final bool? laneAssist;
  final dynamic laneDepartureWarning;
  final dynamic laneKeepAssist;
  final dynamic lastInspectionDate;
  final dynamic leatherSteeringWheel;
  final dynamic ledDaytimeRunningLights;
  final bool? ledHeadlights;
  final dynamic lightSensor;
  final List<dynamic> lighting;
  final List<dynamic> lightingSystem;
  final dynamic luggageCompartmentSeparation;
  final dynamic luggageCompartments;
  final dynamic luggageRacks;
  final dynamic luggageSpace;
  final dynamic lumbarSupport;
  final dynamic maintenanceHistory;
  final String? modifications;
  final List<dynamic> monitor;
  final dynamic motorcycleType;
  final dynamic mountainDrivingAssistant;
  final dynamic multifunctionalSteeringWheel;
  final String? navigationSystem;
  final bool? nightVision;
  final dynamic onBoardComputer;
  final dynamic parkingAid;
  final dynamic parkingAidCamera;
  final dynamic parkingAidSensorsFront;
  final dynamic parkingAidSensorsRear;
  final List<dynamic> parkingAssist;
  final bool? parkingSensors;
  final dynamic passengerAirbag;
  final List<dynamic> performanceFeatures;
  final bool? powerSteering;
  final bool? powerTailgate;
  final List<dynamic> precisionFarming;
  final bool? premiumSound;
  final List<dynamic> protectiveEquipment;
  final dynamic ptoHorsepower;
  final List<String> ptoSystem;
  final bool? radio;
  final bool? rainSensingWipers;
  final dynamic rainSensor;
  final bool? rearAc;
  final List<String> rearAttachments;
  final bool? rearCamera;
  final bool? rearSeatEntertainment;
  final List<dynamic> rearSuspension;
  final bool? remoteStart;
  final List<dynamic> riderAids;
  final dynamic ridingStyle;
  final dynamic roofHeight;
  final dynamic roofType;
  final List<dynamic> safetyFeatures;
  final dynamic seatHeight;
  final List<dynamic> seating;
  final dynamic seatingCapacity;
  final dynamic serviceHistoryDetails;
  final dynamic sideAirbag;
  final dynamic sideAirbags;
  final dynamic soundSystem;
  final bool? spareKey;
  final dynamic speedLimitingSystem;
  final dynamic startingSystem;
  final List<dynamic> steeringSystem;
  final dynamic steeringType;
  final List<dynamic> storageOptions;
  final dynamic summerTires;
  final bool? sunroof;
  final dynamic suspensionType;
  final dynamic switchingRockers;
  final dynamic threePointHitch;
  final bool? tirePressureMonitoring;
  final dynamic tireType;
  final int? torque;
  final dynamic touchscreen;
  final dynamic trackHoldingAssistant;
  final bool? tractionControl;
  final dynamic trafficSignRecognition;
  final dynamic trunkCapacity;
  final dynamic twoZoneClimateControl;
  final dynamic upholsteryMaterial;
  final bool? usbPorts;
  final dynamic vanType;
  final bool? ventilatedSeats;
  final dynamic voiceControl;
  final dynamic warrantyPeriod;
  final String? wheelSize;
  final String? wheelType;
  final dynamic wheelchairAccessible;
  final dynamic wheelchairLift;
  final dynamic wifiHotspot;
  final bool? wirelessCharging;
  final dynamic seatMaterial;
  final dynamic emissionStandard;
  final dynamic enginePower;
  final dynamic engineTorque;
  final dynamic seatBelts;
  final List<dynamic> attachments;
  final dynamic gearbox;
  final dynamic bedLength;
  final dynamic cabType;
  final dynamic equipmentType;
  final bool? gps;
  final List<dynamic> loadingFeatures;
  final dynamic maxLiftingCapacity;
  final dynamic operatingWeight;
  final dynamic operatorCabType;
  final dynamic payload;
  final dynamic ptoType;
  final dynamic truckType;
  final dynamic hydraulicOutlets;
  final dynamic registrationStatus;
  final dynamic coolingSystem;
  final List<dynamic> customParts;
  final List<dynamic> startType;
  final List<dynamic> seatType;
  final dynamic interiorHeight;
  final dynamic interiorLength;
  final dynamic seatingConfiguration;
  final dynamic temperatureRange;
  final List<String> serviceHistory;

  VehiclesModel(
    {
      required this.id,
      required this.vehicleType,
      required this.make,
      required this.model,
      required this.year,
      required this.mileage,
      required this.fuelType,
      required this.transmissionType,
      required this.color,
      required this.condition,
      required this.features,
      required this.interiorColor,
      required this.engine,
      required this.warranty,
      required this.previousOwners,
      required this.listingId,
      required this.brakeType,
      required this.engineSize,
      required this.abs,
      required this.accessibilityFeatures,
      required this.accidentFree,
      required this.adaptiveCruiseControl,
      required this.adaptiveHeadlights,
      required this.additionalNotes,
      required this.airConditioning,
      required this.airQualitySensor,
      required this.airbags,
      required this.aluminumRims,
      required this.ambientLighting,
      required this.androidAuto,
      required this.androidCar,
      required this.appleCarPlay,
      required this.armrest,
      required this.autoDimmingMirrors,
      required this.automaticDazzlingInteriorMirrors,
      required this.automaticEmergencyBraking,
      required this.automaticHighBeams,
      required this.automaticStartStop,
      required this.blindSpotMonitor,
      required this.bluetooth,
      required this.bodyStyle,
      required this.bodyType,
      required this.brakeSystem,
      required this.burglarAlarmSystem,
      required this.busType,
      required this.cabFeatures,
      required this.camera360,
      required this.cargoVolume,
      required this.cdPlayer,
      required this.centralLocking,
      required this.certifications,
      required this.climateControl,
      required this.comfortFeatures,
      required this.communicationSystem,
      required this.cruiseControl,
      required this.curtainAirbags,
      required this.customFeatures,
      required this.customsCleared,
      required this.cylinders,
      required this.dabRadio,
      required this.dashCam,
      required this.daytimeRunningLights,
      required this.deadAngleAssistant,
      required this.displacement,
      required this.distanceTempomat,
      required this.distanceWarning,
      required this.driveSystem,
      required this.driveType,
      required this.driverAirbag,
      required this.dualZoneClimate,
      required this.dvdPlayer,
      required this.electricSeats,
      required this.electricalSideMirrors,
      required this.electricalSystem,
      required this.electricalWindowLifter,
      required this.electronics,
      required this.emergencyBrakeAssist,
      required this.emergencyCallSystem,
      required this.emergencyExits,
      required this.emissions,
      required this.engineConfiguration,
      required this.engineManufacturer,
      required this.engineModel,
      required this.enginePowerOutput,
      required this.engineSpecs,
      required this.engineType,
      required this.entertainmentSystem,
      required this.esp,
      required this.exteriorFeatures,
      required this.fatigueWarningSystem,
      required this.fogLights,
      required this.frameType,
      required this.frontAirbags,
      required this.frontAttachments,
      required this.frontSuspension,
      required this.fuelTankCapacity,
      required this.glarelessHighBeam,
      required this.handlebarType,
      required this.handsFreeCalling,
      required this.headUpDisplay,
      required this.headlightCleaning,
      required this.heatedSeats,
      required this.highBeamAssistant,
      required this.hitchCapacity,
      required this.horsepower,
      required this.hours,
      required this.hydraulicFlow,
      required this.hydraulicSystem,
      required this.immobilizer,
      required this.importStatus,
      required this.instrumentCluster,
      required this.insuranceType,
      required this.integratedMusicStreaming,
      required this.isofix,
      required this.keylessEntry,
      required this.kneeAirbags,
      required this.laneAssist,
      required this.laneDepartureWarning,
      required this.laneKeepAssist,
      required this.lastInspectionDate,
      required this.leatherSteeringWheel,
      required this.ledDaytimeRunningLights,
      required this.ledHeadlights,
      required this.lightSensor,
      required this.lighting,
      required this.lightingSystem,
      required this.luggageCompartmentSeparation,
      required this.luggageCompartments,
      required this.luggageRacks,
      required this.luggageSpace,
      required this.lumbarSupport,
      required this.maintenanceHistory,
      required this.modifications,
      required this.monitor,
      required this.motorcycleType,
      required this.mountainDrivingAssistant,
      required this.multifunctionalSteeringWheel,
      required this.navigationSystem,
      required this.nightVision,
      required this.onBoardComputer,
      required this.parkingAid,
      required this.parkingAidCamera,
      required this.parkingAidSensorsFront,
      required this.parkingAidSensorsRear,
      required this.parkingAssist,
      required this.parkingSensors,
      required this.passengerAirbag,
      required this.performanceFeatures,
      required this.powerSteering,
      required this.powerTailgate,
      required this.precisionFarming,
      required this.premiumSound,
      required this.protectiveEquipment,
      required this.ptoHorsepower,
      required this.ptoSystem,
      required this.radio,
      required this.rainSensingWipers,
      required this.rainSensor,
      required this.rearAc,
      required this.rearAttachments,
      required this.rearCamera,
      required this.rearSeatEntertainment,
      required this.rearSuspension,
      required this.remoteStart,
      required this.riderAids,
      required this.ridingStyle,
      required this.roofHeight,
      required this.roofType,
      required this.safetyFeatures,
      required this.seatHeight,
      required this.seating,
      required this.seatingCapacity,
      required this.serviceHistoryDetails,
      required this.sideAirbag,
      required this.sideAirbags,
      required this.soundSystem,
      required this.spareKey,
      required this.speedLimitingSystem,
      required this.startingSystem,
      required this.steeringSystem,
      required this.steeringType,
      required this.storageOptions,
      required this.summerTires,
      required this.sunroof,
      required this.suspensionType,
      required this.switchingRockers,
      required this.threePointHitch,
      required this.tirePressureMonitoring,
      required this.tireType,
      required this.torque,
      required this.touchscreen,
      required this.trackHoldingAssistant,
      required this.tractionControl,
      required this.trafficSignRecognition,
      required this.trunkCapacity,
      required this.twoZoneClimateControl,
      required this.upholsteryMaterial,
      required this.usbPorts,
      required this.vanType,
      required this.ventilatedSeats,
      required this.voiceControl,
      required this.warrantyPeriod,
      required this.wheelSize,
      required this.wheelType,
      required this.wheelchairAccessible,
      required this.wheelchairLift,
      required this.wifiHotspot,
      required this.wirelessCharging,
      required this.seatMaterial,
      required this.emissionStandard,
      required this.enginePower,
      required this.engineTorque,
      required this.seatBelts,
      required this.attachments,
      required this.gearbox,
      required this.bedLength,
      required this.cabType,
      required this.equipmentType,
      required this.gps,
      required this.loadingFeatures,
      required this.maxLiftingCapacity,
      required this.operatingWeight,
      required this.operatorCabType,
      required this.payload,
      required this.ptoType,
      required this.truckType,
      required this.hydraulicOutlets,
      required this.registrationStatus,
      required this.coolingSystem,
      required this.customParts,
      required this.startType,
      required this.seatType,
      required this.interiorHeight,
      required this.interiorLength,
      required this.seatingConfiguration,
      required this.temperatureRange,
      required this.serviceHistory,
    }
  );

  factory VehiclesModel.fromJson(Map<String, dynamic> json){ 
        return VehiclesModel(
          id: json["id"],
          vehicleType: json["vehicleType"],
          make: json["make"],
          model: json["model"],
          year: json["year"],
          mileage: json["mileage"],
          fuelType: json["fuelType"],
          transmissionType: json["transmissionType"],
          color: json["color"],
          condition: json["condition"],
          features: json["features"] == null ? [] : List<dynamic>.from(json["features"]!.map((x) => x)),
          interiorColor: json["interiorColor"],
          engine: json["engine"],
          warranty: json["warranty"],
          previousOwners: json["previousOwners"],
          listingId: json["listingId"],
          brakeType: json["brakeType"],
          engineSize: json["engineSize"],
          abs: json["abs"],
          accessibilityFeatures: json["accessibilityFeatures"] == null ? [] : List<dynamic>.from(json["accessibilityFeatures"]!.map((x) => x)),
          accidentFree: json["accidentFree"],
          adaptiveCruiseControl: json["adaptiveCruiseControl"],
          adaptiveHeadlights: json["adaptiveHeadlights"],
          additionalNotes: json["additionalNotes"],
          airConditioning: json["airConditioning"],
          airQualitySensor: json["airQualitySensor"],
          airbags: json["airbags"],
          aluminumRims: json["aluminumRims"],
          ambientLighting: json["ambientLighting"],
          androidAuto: json["androidAuto"],
          androidCar: json["androidCar"],
          appleCarPlay: json["appleCarPlay"],
          armrest: json["armrest"],
          autoDimmingMirrors: json["autoDimmingMirrors"],
          automaticDazzlingInteriorMirrors: json["automaticDazzlingInteriorMirrors"],
          automaticEmergencyBraking: json["automaticEmergencyBraking"],
          automaticHighBeams: json["automaticHighBeams"],
          automaticStartStop: json["automaticStartStop"],
          blindSpotMonitor: json["blindSpotMonitor"],
          bluetooth: json["bluetooth"],
          bodyStyle: json["bodyStyle"],
          bodyType: json["bodyType"],
          brakeSystem: json["brakeSystem"] == null ? [] : List<dynamic>.from(json["brakeSystem"]!.map((x) => x)),
          burglarAlarmSystem: json["burglarAlarmSystem"],
          busType: json["busType"],
          cabFeatures: json["cabFeatures"] == null ? [] : List<dynamic>.from(json["cabFeatures"]!.map((x) => x)),
          camera360: json["camera360"],
          cargoVolume: json["cargoVolume"],
          cdPlayer: json["cdPlayer"],
          centralLocking: json["centralLocking"],
          certifications: json["certifications"] == null ? [] : List<dynamic>.from(json["certifications"]!.map((x) => x)),
          climateControl: json["climateControl"],
          comfortFeatures: json["comfortFeatures"] == null ? [] : List<dynamic>.from(json["comfortFeatures"]!.map((x) => x)),
          communicationSystem: json["communicationSystem"] == null ? [] : List<dynamic>.from(json["communicationSystem"]!.map((x) => x)),
          cruiseControl: json["cruiseControl"],
          curtainAirbags: json["curtainAirbags"],
          customFeatures: json["customFeatures"] == null ? [] : List<dynamic>.from(json["customFeatures"]!.map((x) => x)),
          customsCleared: json["customsCleared"],
          cylinders: json["cylinders"],
          dabRadio: json["dabRadio"],
          dashCam: json["dashCam"],
          daytimeRunningLights: json["daytimeRunningLights"],
          deadAngleAssistant: json["deadAngleAssistant"],
          displacement: json["displacement"],
          distanceTempomat: json["distanceTempomat"],
          distanceWarning: json["distanceWarning"],
          driveSystem: json["driveSystem"],
          driveType: json["driveType"],
          driverAirbag: json["driverAirbag"],
          dualZoneClimate: json["dualZoneClimate"],
          dvdPlayer: json["dvdPlayer"],
          electricSeats: json["electricSeats"],
          electricalSideMirrors: json["electricalSideMirrors"],
          electricalSystem: json["electricalSystem"],
          electricalWindowLifter: json["electricalWindowLifter"],
          electronics: json["electronics"] == null ? [] : List<dynamic>.from(json["electronics"]!.map((x) => x)),
          emergencyBrakeAssist: json["emergencyBrakeAssist"],
          emergencyCallSystem: json["emergencyCallSystem"],
          emergencyExits: json["emergencyExits"],
          emissions: json["emissions"],
          engineConfiguration: json["engineConfiguration"],
          engineManufacturer: json["engineManufacturer"],
          engineModel: json["engineModel"],
          enginePowerOutput: json["enginePowerOutput"],
          engineSpecs: json["engineSpecs"] == null ? [] : List<String>.from(json["engineSpecs"]!.map((x) => x)),
          engineType: json["engineType"],
          entertainmentSystem: json["entertainmentSystem"] == null ? [] : List<dynamic>.from(json["entertainmentSystem"]!.map((x) => x)),
          esp: json["esp"],
          exteriorFeatures: json["exteriorFeatures"] == null ? [] : List<dynamic>.from(json["exteriorFeatures"]!.map((x) => x)),
          fatigueWarningSystem: json["fatigueWarningSystem"],
          fogLights: json["fogLights"],
          frameType: json["frameType"],
          frontAirbags: json["frontAirbags"],
          frontAttachments: json["frontAttachments"] == null ? [] : List<String>.from(json["frontAttachments"]!.map((x) => x)),
          frontSuspension: json["frontSuspension"] == null ? [] : List<dynamic>.from(json["frontSuspension"]!.map((x) => x)),
          fuelTankCapacity: json["fuelTankCapacity"],
          glarelessHighBeam: json["glarelessHighBeam"],
          handlebarType: json["handlebarType"],
          handsFreeCalling: json["handsFreeCalling"],
          headUpDisplay: json["headUpDisplay"],
          headlightCleaning: json["headlightCleaning"],
          heatedSeats: json["heatedSeats"],
          highBeamAssistant: json["highBeamAssistant"],
          hitchCapacity: json["hitchCapacity"],
          horsepower: json["horsepower"],
          hours: json["hours"],
          hydraulicFlow: json["hydraulicFlow"],
          hydraulicSystem: json["hydraulicSystem"],
          immobilizer: json["immobilizer"],
          importStatus: json["importStatus"],
          instrumentCluster: json["instrumentCluster"] == null ? [] : List<dynamic>.from(json["instrumentCluster"]!.map((x) => x)),
          insuranceType: json["insuranceType"],
          integratedMusicStreaming: json["integratedMusicStreaming"],
          isofix: json["isofix"],
          keylessEntry: json["keylessEntry"],
          kneeAirbags: json["kneeAirbags"],
          laneAssist: json["laneAssist"],
          laneDepartureWarning: json["laneDepartureWarning"],
          laneKeepAssist: json["laneKeepAssist"],
          lastInspectionDate: json["lastInspectionDate"],
          leatherSteeringWheel: json["leatherSteeringWheel"],
          ledDaytimeRunningLights: json["ledDaytimeRunningLights"],
          ledHeadlights: json["ledHeadlights"],
          lightSensor: json["lightSensor"],
          lighting: json["lighting"] == null ? [] : List<dynamic>.from(json["lighting"]!.map((x) => x)),
          lightingSystem: json["lightingSystem"] == null ? [] : List<dynamic>.from(json["lightingSystem"]!.map((x) => x)),
          luggageCompartmentSeparation: json["luggageCompartmentSeparation"],
          luggageCompartments: json["luggageCompartments"],
          luggageRacks: json["luggageRacks"],
          luggageSpace: json["luggageSpace"],
          lumbarSupport: json["lumbarSupport"],
          maintenanceHistory: json["maintenanceHistory"],
          modifications: json["modifications"],
          monitor: json["monitor"] == null ? [] : List<dynamic>.from(json["monitor"]!.map((x) => x)),
          motorcycleType: json["motorcycleType"],
          mountainDrivingAssistant: json["mountainDrivingAssistant"],
          multifunctionalSteeringWheel: json["multifunctionalSteeringWheel"],
          navigationSystem: json["navigationSystem"],
          nightVision: json["nightVision"],
          onBoardComputer: json["onBoardComputer"],
          parkingAid: json["parkingAid"],
          parkingAidCamera: json["parkingAidCamera"],
          parkingAidSensorsFront: json["parkingAidSensorsFront"],
          parkingAidSensorsRear: json["parkingAidSensorsRear"],
          parkingAssist: json["parkingAssist"] == null ? [] : List<dynamic>.from(json["parkingAssist"]!.map((x) => x)),
          parkingSensors: json["parkingSensors"],
          passengerAirbag: json["passengerAirbag"],
          performanceFeatures: json["performanceFeatures"] == null ? [] : List<dynamic>.from(json["performanceFeatures"]!.map((x) => x)),
          powerSteering: json["powerSteering"],
          powerTailgate: json["powerTailgate"],
          precisionFarming: json["precisionFarming"] == null ? [] : List<dynamic>.from(json["precisionFarming"]!.map((x) => x)),
          premiumSound: json["premiumSound"],
          protectiveEquipment: json["protectiveEquipment"] == null ? [] : List<dynamic>.from(json["protectiveEquipment"]!.map((x) => x)),
          ptoHorsepower: json["ptoHorsepower"],
          ptoSystem: json["ptoSystem"] == null ? [] : List<String>.from(json["ptoSystem"]!.map((x) => x)),
          radio: json["radio"],
          rainSensingWipers: json["rainSensingWipers"],
          rainSensor: json["rainSensor"],
          rearAc: json["rearAC"],
          rearAttachments: json["rearAttachments"] == null ? [] : List<String>.from(json["rearAttachments"]!.map((x) => x)),
          rearCamera: json["rearCamera"],
          rearSeatEntertainment: json["rearSeatEntertainment"],
          rearSuspension: json["rearSuspension"] == null ? [] : List<dynamic>.from(json["rearSuspension"]!.map((x) => x)),
          remoteStart: json["remoteStart"],
          riderAids: json["riderAids"] == null ? [] : List<dynamic>.from(json["riderAids"]!.map((x) => x)),
          ridingStyle: json["ridingStyle"],
          roofHeight: json["roofHeight"],
          roofType: json["roofType"],
          safetyFeatures: json["safetyFeatures"] == null ? [] : List<dynamic>.from(json["safetyFeatures"]!.map((x) => x)),
          seatHeight: json["seatHeight"],
          seating: json["seating"] == null ? [] : List<dynamic>.from(json["seating"]!.map((x) => x)),
          seatingCapacity: json["seatingCapacity"],
          serviceHistoryDetails: json["serviceHistoryDetails"],
          sideAirbag: json["sideAirbag"],
          sideAirbags: json["sideAirbags"],
          soundSystem: json["soundSystem"],
          spareKey: json["spareKey"],
          speedLimitingSystem: json["speedLimitingSystem"],
          startingSystem: json["startingSystem"],
          steeringSystem: json["steeringSystem"] == null ? [] : List<dynamic>.from(json["steeringSystem"]!.map((x) => x)),
          steeringType: json["steeringType"],
          storageOptions: json["storageOptions"] == null ? [] : List<dynamic>.from(json["storageOptions"]!.map((x) => x)),
          summerTires: json["summerTires"],
          sunroof: json["sunroof"],
          suspensionType: json["suspensionType"],
          switchingRockers: json["switchingRockers"],
          threePointHitch: json["threePointHitch"],
          tirePressureMonitoring: json["tirePressureMonitoring"],
          tireType: json["tireType"],
          torque: json["torque"],
          touchscreen: json["touchscreen"],
          trackHoldingAssistant: json["trackHoldingAssistant"],
          tractionControl: json["tractionControl"],
          trafficSignRecognition: json["trafficSignRecognition"],
          trunkCapacity: json["trunkCapacity"],
          twoZoneClimateControl: json["twoZoneClimateControl"],
          upholsteryMaterial: json["upholsteryMaterial"],
          usbPorts: json["usbPorts"],
          vanType: json["vanType"],
          ventilatedSeats: json["ventilatedSeats"],
          voiceControl: json["voiceControl"],
          warrantyPeriod: json["warrantyPeriod"],
          wheelSize: json["wheelSize"],
          wheelType: json["wheelType"],
          wheelchairAccessible: json["wheelchairAccessible"],
          wheelchairLift: json["wheelchairLift"],
          wifiHotspot: json["wifiHotspot"],
          wirelessCharging: json["wirelessCharging"],
          seatMaterial: json["seatMaterial"],
          emissionStandard: json["emissionStandard"],
          enginePower: json["enginePower"],
          engineTorque: json["engineTorque"],
          seatBelts: json["seatBelts"],
          attachments: json["attachments"] == null ? [] : List<dynamic>.from(json["attachments"]!.map((x) => x)),
          gearbox: json["gearbox"],
          bedLength: json["bedLength"],
          cabType: json["cabType"],
          equipmentType: json["equipmentType"],
          gps: json["gps"],
          loadingFeatures: json["loadingFeatures"] == null ? [] : List<dynamic>.from(json["loadingFeatures"]!.map((x) => x)),
          maxLiftingCapacity: json["maxLiftingCapacity"],
          operatingWeight: json["operatingWeight"],
          operatorCabType: json["operatorCabType"],
          payload: json["payload"],
          ptoType: json["ptoType"],
          truckType: json["truckType"],
          hydraulicOutlets: json["hydraulicOutlets"],
          registrationStatus: json["registrationStatus"],
          coolingSystem: json["coolingSystem"],
          customParts: json["customParts"] == null ? [] : List<dynamic>.from(json["customParts"]!.map((x) => x)),
          startType: json["startType"] == null ? [] : List<dynamic>.from(json["startType"]!.map((x) => x)),
          seatType: json["seatType"] == null ? [] : List<dynamic>.from(json["seatType"]!.map((x) => x)),
          interiorHeight: json["interiorHeight"],
          interiorLength: json["interiorLength"],
          seatingConfiguration: json["seatingConfiguration"],
          temperatureRange: json["temperatureRange"],
          serviceHistory: json["serviceHistory"] == null ? [] : List<String>.from(json["serviceHistory"]!.map((x) => x)),
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "vehicleType": vehicleType,
      "make": make,
      "model": model,
      "year": year,
      "mileage": mileage,
      "fuelType": fuelType,
      "transmissionType": transmissionType,
      "color": color,
      "condition": condition,
      "features": features.map((x) => x).toList(),
      "interiorColor": interiorColor,
      "engine": engine,
      "warranty": warranty,
      "previousOwners": previousOwners,
      "listingId": listingId,
      "brakeType": brakeType,
      "engineSize": engineSize,
      "abs": abs,
      "accessibilityFeatures": accessibilityFeatures.map((x) => x).toList(),
      "accidentFree": accidentFree,
      "adaptiveCruiseControl": adaptiveCruiseControl,
      "adaptiveHeadlights": adaptiveHeadlights,
      "additionalNotes": additionalNotes,
      "airConditioning": airConditioning,
      "airQualitySensor": airQualitySensor,
      "airbags": airbags,
      "aluminumRims": aluminumRims,
      "ambientLighting": ambientLighting,
      "androidAuto": androidAuto,
      "androidCar": androidCar,
      "appleCarPlay": appleCarPlay,
      "armrest": armrest,
      "autoDimmingMirrors": autoDimmingMirrors,
      "automaticDazzlingInteriorMirrors": automaticDazzlingInteriorMirrors,
      "automaticEmergencyBraking": automaticEmergencyBraking,
      "automaticHighBeams": automaticHighBeams,
      "automaticStartStop": automaticStartStop,
      "blindSpotMonitor": blindSpotMonitor,
      "bluetooth": bluetooth,
      "bodyStyle": bodyStyle,
      "bodyType": bodyType,
      "brakeSystem": brakeSystem.map((x) => x).toList(),
      "burglarAlarmSystem": burglarAlarmSystem,
      "busType": busType,
      "cabFeatures": cabFeatures.map((x) => x).toList(),
      "camera360": camera360,
      "cargoVolume": cargoVolume,
      "cdPlayer": cdPlayer,
      "centralLocking": centralLocking,
      "certifications": certifications.map((x) => x).toList(),
      "climateControl": climateControl,
      "comfortFeatures": comfortFeatures.map((x) => x).toList(),
      "communicationSystem": communicationSystem.map((x) => x).toList(),
      "cruiseControl": cruiseControl,
      "curtainAirbags": curtainAirbags,
      "customFeatures": customFeatures.map((x) => x).toList(),
      "customsCleared": customsCleared,
      "cylinders": cylinders,
      "dabRadio": dabRadio,
      "dashCam": dashCam,
      "daytimeRunningLights": daytimeRunningLights,
      "deadAngleAssistant": deadAngleAssistant,
      "displacement": displacement,
      "distanceTempomat": distanceTempomat,
      "distanceWarning": distanceWarning,
      "driveSystem": driveSystem,
      "driveType": driveType,
      "driverAirbag": driverAirbag,
      "dualZoneClimate": dualZoneClimate,
      "dvdPlayer": dvdPlayer,
      "electricSeats": electricSeats,
      "electricalSideMirrors": electricalSideMirrors,
      "electricalSystem": electricalSystem,
      "electricalWindowLifter": electricalWindowLifter,
      "electronics": electronics.map((x) => x).toList(),
      "emergencyBrakeAssist": emergencyBrakeAssist,
      "emergencyCallSystem": emergencyCallSystem,
      "emergencyExits": emergencyExits,
      "emissions": emissions,
      "engineConfiguration": engineConfiguration,
      "engineManufacturer": engineManufacturer,
      "engineModel": engineModel,
      "enginePowerOutput": enginePowerOutput,
      "engineSpecs": engineSpecs.map((x) => x).toList(),
      "engineType": engineType,
      "entertainmentSystem": entertainmentSystem.map((x) => x).toList(),
      "esp": esp,
      "exteriorFeatures": exteriorFeatures.map((x) => x).toList(),
      "fatigueWarningSystem": fatigueWarningSystem,
      "fogLights": fogLights,
      "frameType": frameType,
      "frontAirbags": frontAirbags,
      "frontAttachments": frontAttachments.map((x) => x).toList(),
      "frontSuspension": frontSuspension.map((x) => x).toList(),
      "fuelTankCapacity": fuelTankCapacity,
      "glarelessHighBeam": glarelessHighBeam,
      "handlebarType": handlebarType,
      "handsFreeCalling": handsFreeCalling,
      "headUpDisplay": headUpDisplay,
      "headlightCleaning": headlightCleaning,
      "heatedSeats": heatedSeats,
      "highBeamAssistant": highBeamAssistant,
      "hitchCapacity": hitchCapacity,
      "horsepower": horsepower,
      "hours": hours,
      "hydraulicFlow": hydraulicFlow,
      "hydraulicSystem": hydraulicSystem,
      "immobilizer": immobilizer,
      "importStatus": importStatus,
      "instrumentCluster": instrumentCluster.map((x) => x).toList(),
      "insuranceType": insuranceType,
      "integratedMusicStreaming": integratedMusicStreaming,
      "isofix": isofix,
      "keylessEntry": keylessEntry,
      "kneeAirbags": kneeAirbags,
      "laneAssist": laneAssist,
      "laneDepartureWarning": laneDepartureWarning,
      "laneKeepAssist": laneKeepAssist,
      "lastInspectionDate": lastInspectionDate,
      "leatherSteeringWheel": leatherSteeringWheel,
      "ledDaytimeRunningLights": ledDaytimeRunningLights,
      "ledHeadlights": ledHeadlights,
      "lightSensor": lightSensor,
      "lighting": lighting.map((x) => x).toList(),
      "lightingSystem": lightingSystem.map((x) => x).toList(),
      "luggageCompartmentSeparation": luggageCompartmentSeparation,
      "luggageCompartments": luggageCompartments,
      "luggageRacks": luggageRacks,
      "luggageSpace": luggageSpace,
      "lumbarSupport": lumbarSupport,
      "maintenanceHistory": maintenanceHistory,
      "modifications": modifications,
      "monitor": monitor.map((x) => x).toList(),
      "motorcycleType": motorcycleType,
      "mountainDrivingAssistant": mountainDrivingAssistant,
      "multifunctionalSteeringWheel": multifunctionalSteeringWheel,
      "navigationSystem": navigationSystem,
      "nightVision": nightVision,
      "onBoardComputer": onBoardComputer,
      "parkingAid": parkingAid,
      "parkingAidCamera": parkingAidCamera,
      "parkingAidSensorsFront": parkingAidSensorsFront,
      "parkingAidSensorsRear": parkingAidSensorsRear,
      "parkingAssist": parkingAssist.map((x) => x).toList(),
      "parkingSensors": parkingSensors,
      "passengerAirbag": passengerAirbag,
      "performanceFeatures": performanceFeatures.map((x) => x).toList(),
      "powerSteering": powerSteering,
      "powerTailgate": powerTailgate,
      "precisionFarming": precisionFarming.map((x) => x).toList(),
      "premiumSound": premiumSound,
      "protectiveEquipment": protectiveEquipment.map((x) => x).toList(),
      "ptoHorsepower": ptoHorsepower,
      "ptoSystem": ptoSystem.map((x) => x).toList(),
      "radio": radio,
      "rainSensingWipers": rainSensingWipers,
      "rainSensor": rainSensor,
      "rearAC": rearAc,
      "rearAttachments": rearAttachments.map((x) => x).toList(),
      "rearCamera": rearCamera,
      "rearSeatEntertainment": rearSeatEntertainment,
      "rearSuspension": rearSuspension.map((x) => x).toList(),
      "remoteStart": remoteStart,
      "riderAids": riderAids.map((x) => x).toList(),
      "ridingStyle": ridingStyle,
      "roofHeight": roofHeight,
      "roofType": roofType,
      "safetyFeatures": safetyFeatures.map((x) => x).toList(),
      "seatHeight": seatHeight,
      "seating": seating.map((x) => x).toList(),
      "seatingCapacity": seatingCapacity,
      "serviceHistoryDetails": serviceHistoryDetails,
      "sideAirbag": sideAirbag,
      "sideAirbags": sideAirbags,
      "soundSystem": soundSystem,
      "spareKey": spareKey,
      "speedLimitingSystem": speedLimitingSystem,
      "startingSystem": startingSystem,
      "steeringSystem": steeringSystem.map((x) => x).toList(),
      "steeringType": steeringType,
      "storageOptions": storageOptions.map((x) => x).toList(),
      "summerTires": summerTires,
      "sunroof": sunroof,
      "suspensionType": suspensionType,
      "switchingRockers": switchingRockers,
      "threePointHitch": threePointHitch,
      "tirePressureMonitoring": tirePressureMonitoring,
      "tireType": tireType,
      "torque": torque,
      "touchscreen": touchscreen,
      "trackHoldingAssistant": trackHoldingAssistant,
      "tractionControl": tractionControl,
      "trafficSignRecognition": trafficSignRecognition,
      "trunkCapacity": trunkCapacity,
      "twoZoneClimateControl": twoZoneClimateControl,
      "upholsteryMaterial": upholsteryMaterial,
      "usbPorts": usbPorts,
      "vanType": vanType,
      "ventilatedSeats": ventilatedSeats,
      "voiceControl": voiceControl,
      "warrantyPeriod": warrantyPeriod,
      "wheelSize": wheelSize,
      "wheelType": wheelType,
      "wheelchairAccessible": wheelchairAccessible,
      "wheelchairLift": wheelchairLift,
      "wifiHotspot": wifiHotspot,
      "wirelessCharging": wirelessCharging,
      "seatMaterial": seatMaterial,
      "emissionStandard": emissionStandard,
      "enginePower": enginePower,
      "engineTorque": engineTorque,
      "seatBelts": seatBelts,
      "attachments": attachments.map((x) => x).toList(),
      "gearbox": gearbox,
      "bedLength": bedLength,
      "cabType": cabType,
      "equipmentType": equipmentType,
      "gps": gps,
      "loadingFeatures": loadingFeatures.map((x) => x).toList(),
      "maxLiftingCapacity": maxLiftingCapacity,
      "operatingWeight": operatingWeight,
      "operatorCabType": operatorCabType,
      "payload": payload,
      "ptoType": ptoType,
      "truckType": truckType,
      "hydraulicOutlets": hydraulicOutlets,
      "registrationStatus": registrationStatus,
      "coolingSystem": coolingSystem,
      "customParts": customParts.map((x) => x).toList(),
      "startType": startType.map((x) => x).toList(),
      "seatType": seatType.map((x) => x).toList(),
      "interiorHeight": interiorHeight,
      "interiorLength": interiorLength,
      "seatingConfiguration": seatingConfiguration,
      "temperatureRange": temperatureRange,
      "serviceHistory": serviceHistory.map((x) => x).toList(),
    };
  }

  @override
  String toString(){
      return "$id, $vehicleType, $make, $model, $year, $mileage, $fuelType, $transmissionType, $color, $condition, $features, $interiorColor, $engine, $warranty, $previousOwners, $listingId, $brakeType, $engineSize, $abs, $accessibilityFeatures, $accidentFree, $adaptiveCruiseControl, $adaptiveHeadlights, $additionalNotes, $airConditioning, $airQualitySensor, $airbags, $aluminumRims, $ambientLighting, $androidAuto, $androidCar, $appleCarPlay, $armrest, $autoDimmingMirrors, $automaticDazzlingInteriorMirrors, $automaticEmergencyBraking, $automaticHighBeams, $automaticStartStop, $blindSpotMonitor, $bluetooth, $bodyStyle, $bodyType, $brakeSystem, $burglarAlarmSystem, $busType, $cabFeatures, $camera360, $cargoVolume, $cdPlayer, $centralLocking, $certifications, $climateControl, $comfortFeatures, $communicationSystem, $cruiseControl, $curtainAirbags, $customFeatures, $customsCleared, $cylinders, $dabRadio, $dashCam, $daytimeRunningLights, $deadAngleAssistant, $displacement, $distanceTempomat, $distanceWarning, $driveSystem, $driveType, $driverAirbag, $dualZoneClimate, $dvdPlayer, $electricSeats, $electricalSideMirrors, $electricalSystem, $electricalWindowLifter, $electronics, $emergencyBrakeAssist, $emergencyCallSystem, $emergencyExits, $emissions, $engineConfiguration, $engineManufacturer, $engineModel, $enginePowerOutput, $engineSpecs, $engineType, $entertainmentSystem, $esp, $exteriorFeatures, $fatigueWarningSystem, $fogLights, $frameType, $frontAirbags, $frontAttachments, $frontSuspension, $fuelTankCapacity, $glarelessHighBeam, $handlebarType, $handsFreeCalling, $headUpDisplay, $headlightCleaning, $heatedSeats, $highBeamAssistant, $hitchCapacity, $horsepower, $hours, $hydraulicFlow, $hydraulicSystem, $immobilizer, $importStatus, $instrumentCluster, $insuranceType, $integratedMusicStreaming, $isofix, $keylessEntry, $kneeAirbags, $laneAssist, $laneDepartureWarning, $laneKeepAssist, $lastInspectionDate, $leatherSteeringWheel, $ledDaytimeRunningLights, $ledHeadlights, $lightSensor, $lighting, $lightingSystem, $luggageCompartmentSeparation, $luggageCompartments, $luggageRacks, $luggageSpace, $lumbarSupport, $maintenanceHistory, $modifications, $monitor, $motorcycleType, $mountainDrivingAssistant, $multifunctionalSteeringWheel, $navigationSystem, $nightVision, $onBoardComputer, $parkingAid, $parkingAidCamera, $parkingAidSensorsFront, $parkingAidSensorsRear, $parkingAssist, $parkingSensors, $passengerAirbag, $performanceFeatures, $powerSteering, $powerTailgate, $precisionFarming, $premiumSound, $protectiveEquipment, $ptoHorsepower, $ptoSystem, $radio, $rainSensingWipers, $rainSensor, $rearAc, $rearAttachments, $rearCamera, $rearSeatEntertainment, $rearSuspension, $remoteStart, $riderAids, $ridingStyle, $roofHeight, $roofType, $safetyFeatures, $seatHeight, $seating, $seatingCapacity, $serviceHistoryDetails, $sideAirbag, $sideAirbags, $soundSystem, $spareKey, $speedLimitingSystem, $startingSystem, $steeringSystem, $steeringType, $storageOptions, $summerTires, $sunroof, $suspensionType, $switchingRockers, $threePointHitch, $tirePressureMonitoring, $tireType, $torque, $touchscreen, $trackHoldingAssistant, $tractionControl, $trafficSignRecognition, $trunkCapacity, $twoZoneClimateControl, $upholsteryMaterial, $usbPorts, $vanType, $ventilatedSeats, $voiceControl, $warrantyPeriod, $wheelSize, $wheelType, $wheelchairAccessible, $wheelchairLift, $wifiHotspot, $wirelessCharging, $seatMaterial, $emissionStandard, $enginePower, $engineTorque, $seatBelts, $attachments, $gearbox, $bedLength, $cabType, $equipmentType, $gps, $loadingFeatures, $maxLiftingCapacity, $operatingWeight, $operatorCabType, $payload, $ptoType, $truckType, $hydraulicOutlets, $registrationStatus, $coolingSystem, $customParts, $startType, $seatType, $interiorHeight, $interiorLength, $seatingConfiguration, $temperatureRange, $serviceHistory, ";
  }
}