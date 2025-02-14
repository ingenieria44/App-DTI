import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? operaDiam(
  double? d1,
  double? d2,
  bool? d3,
  bool? undad,
) {
  if (d1 == null || d2 == null || d3 == null || undad == null) return null;

  double unidade = d3 == true ? 0.0254 : 0.001;
  double flowreal = undad == true ? (0.0002777777777777778) : (0.000471947);

  double florreal = (d1! * flowreal);

  double diametrores = math.sqrt((4 * florreal) / (d2! * math.pi));

  double resultado = (diametrores / unidade).roundToDouble();

  if (d2 > 12) {
    return ('Velocity no recommended :: $resultado');
  } else {
    return (': $resultado');
  }
}

String? cfdtable(
  double? altura,
  double? diferenciatemperta,
  double? pression,
) {
  if (altura != null && diferenciatemperta != null && pression != null) {
    if (altura == 1 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/2qbmznulxbxh/1_10.png';
    } else if (altura == 1 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/mwgm01trxngf/1_11.png';
    } else if (altura == 1 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/rn7boefr0vfs/1_12.png';
    } else if (altura == 1 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/25oe2sv3ner1/1_13.png';
    } else if (altura == 1 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/yqehwh4wjvnc/1_14.png';
    } else if (altura == 1 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/vzaybwbickr3/1_15.png';
    } else if (altura == 1 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/bp39zkukh9sc/1_16.png';
    } else if (altura == 1 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/0z4iqxrizxk1/1_17.png';
    } else if (altura == 1 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/0nxqmgu8vu4m/1_18.png';

      //4m.
    } else if (altura == 2 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/qck33yh3doe5/1_1.png';
    } else if (altura == 2 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/q7m0vvhkn8va/1_2.png';
    } else if (altura == 2 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/23rn4u4iddls/1_3.png';
    } else if (altura == 2 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/th2cia5tce8k/1_4.png';
    } else if (altura == 2 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/iyt2zzwszmx0/1_5.png';
    } else if (altura == 2 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/296hijvijnp5/1_6.png';
    } else if (altura == 2 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/y3868iks2zw5/1_7.png';
    } else if (altura == 2 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/25d6wsomxjyy/1_8.png';
    } else if (altura == 2 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/5c2qgc9opsye/1_9.png';

      //5m.
    } else if (altura == 3 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/3khqdff8d45w/1_19.png';
    } else if (altura == 3 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/mus9hf2shdi9/1_20.png';
    } else if (altura == 3 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/2jlk0s0s3yaq/1_21.png';
    } else if (altura == 3 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ahjrot3p57jp/1_22.png';
    } else if (altura == 3 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/8f9cykj5pas1/1_23.png';
    } else if (altura == 3 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/niw0tt5mzlz2/1_24.png';
    } else if (altura == 3 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/lexq5ingboa9/1_25.png';
    } else if (altura == 3 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/dxovq9psyvcc/1_26.png';
    } else if (altura == 3 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/8ups00xyrq4j/1_27.png';

      //6m.
    } else if (altura == 4 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/nmtf44zq7v16/1_28.png';
    } else if (altura == 4 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/b9wivfjkngdu/1_29.png';
    } else if (altura == 4 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/69fpb8ozi0lj/1_30.png';
    } else if (altura == 4 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/gpmdmazgv6nr/1_31.png';
    } else if (altura == 4 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/3dclaj4wp3z6/1_32.png';
    } else if (altura == 4 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/lltn46otjs39/1_33.png';
    } else if (altura == 4 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/wyu3t7a5ydvs/1_34.png';
    } else if (altura == 4 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/iy03ltdqzuub/1_35.png';
    } else if (altura == 4 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/mmz72slhye2v/1_36.png';

      //7m.
    } else if (altura == 5 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/k6v6t88zuubp/1_37.png';
    } else if (altura == 5 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/k0dq71l3nfmt/1_38.png';
    } else if (altura == 5 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/yg9qgxf2tuds/1_39.png';
    } else if (altura == 5 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ewzs9l04n2hf/1_40.png';
    } else if (altura == 5 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/h0tjns36ggtd/1_41.png';
    } else if (altura == 5 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/bov1m0ozdloh/1_42.png';
    } else if (altura == 5 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/6ntvi62w079g/1_43.png';
    } else if (altura == 5 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/wjy0m53ncm47/1_44.png';
    } else if (altura == 5 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/4bgnqfnt2das/1_45.png';

      //8m.
    } else if (altura == 6 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ytymm3hnv414/1_46.png';
    } else if (altura == 6 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/s4nualscs46s/1_47.png';
    } else if (altura == 6 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/lbrztr8zxtm7/1_48.png';
    } else if (altura == 6 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/hfak2l6i9l1f/1_49.png';
    } else if (altura == 6 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/l8o7xvrqdk2a/1_50.png';
    } else if (altura == 6 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/myuy5ehlkwd8/1_51.png';
    } else if (altura == 6 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/1d4o7t7fdtjc/1_52.png';
    } else if (altura == 6 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/wgyjzawbrwe4/1_53.png';
    } else if (altura == 6 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/lumoyjuf3dra/1_54.png';
    } else {
      return null;
    }
  }
}

double? convertFlow(
  double? l1,
  double? l2,
  double? l3,
) {
  // return ((l1! / l2!) * l3!);
  if (l1 != null && l2 != null && l2 != 0 && l3 != null) {
    return ((l1 / l2) * l3);
  } else {
    return null;
  }
}

double? convertmass(
  double? l1,
  double? l2,
  double? l3,
) {
  // MULTIPLICA L1 X L2 Y LUEGO POR L3
  if (l1 != null && l2 != null && l2 != 0 && l3 != null) {
    return ((l1 / l2) * l3);
  } else {
    return null;
  }
}

double? convertLenght(
  double? l1,
  double? l2,
  double? l3,
) {
  // MULTIPLICA L1 X L2 Y LUEGO POR L3
  if (l1 != null && l2 != null && l2 != 0 && l3 != null) {
    return ((l1 / l2) * l3);
  } else {
    return null;
  }
}

double? convertTemperature(
  double? l1,
  double? l2,
  double? l3,
) {
  double temp = 0;

  if (l2 == 1) {
    temp = l1! * 1;
  } else if (l2 == 2) {
    temp = l1! - 273.15;
  } else if (l2 == 3) {
    temp = (l1! - 32) * 5 / 9;
  } else {
    return null;
  }

  if (l3 == 1) {
    return temp;
  } else if (l3 == 2) {
    return temp + 273.15;
  } else if (l3 == 3) {
    return (temp * 9 / 5) + 32;
  } else {
    return null;
  }
}

double? convertVelocityCopy(
  double? l1,
  double? l2,
  double? l3,
) {
  // MULTIPLICA L1 X L2 Y LUEGO POR L3
  if (l1 != null && l2 != null && l2 != 0 && l3 != null) {
    return ((l1 / l2) * l3);
  } else {
    return null;
  }
}

String? elipdiam(
  double? aif,
  bool? unt,
  double? hd,
  double? hv,
  bool? unt2,
) {
  if (aif == null || unt == null || hd == null || hv == null || unt2 == null)
    return null;
  double fact = unt2 == true ? 0.0254 : 0.001;
  double flowr = unt == true ? (0.0002777777777777778) : (0.000471947);

  double realhd = hd! * fact;
  double realhv = hv! * fact;
  double radio = realhv / 2;
  double areacirculo = math.pi * (radio * radio);

  double areacuadrado = (realhv) * (realhd - realhv);

  double ttArea = areacirculo + areacuadrado;

  double flowreald = aif! * flowr;

  double velocidad = (flowreald / ttArea);

  velocidad = double.parse(velocidad.toStringAsFixed(2));
  return velocidad.toString();
}

double? pressureDRpLinear(
  double? l1,
  double? a1,
  double? v1,
  bool? aif1,
  bool? len1,
  bool? vbool,
) {
// calcular lo siguiente =(0.95*0.02189*l1*((POTENCIA((ai/3600),1.82))/(POTENCIA(v1,4.86))))
  if (l1 == null || a1 == null || v1 == null) return null;

  double fact1 = aif1 == true ? (1 / 3600) : (1 / 2118.8819);
  double lentg1 = len1 == true ? (1) : (1 / 3.28084);
  double vreal = vbool == true ? (1) : (1 / 196.85);

  double real_leng = (l1 * lentg1);
  double flujo = (a1 * fact1);
  double vrreal = (v1 * vreal);

  double area = flujo / vrreal;
  double diametrom = 2 * math.sqrt(area / math.pi);

  return (0.95 *
          0.02189 *
          real_leng *
          (math.pow((flujo), 1.82) / math.pow(diametrom, 4.86)))
      .roundToDouble();
}

double? halfdiam(
  double? aif,
  bool? unt,
  double? hv,
  bool? unt2,
) {
  if (aif == null || unt == null || hv == null || unt2 == null) return null;

  double fact = unt2 == true ? 0.0254 : 0.001;
  double flowr = unt == true ? (0.0002777777777777778) : (0.000471947);

  double realhv = hv! * fact;

  double radio = realhv / 2;
  double areamediocirculo = (math.pi * (radio * radio) / 2);

  double ttArea = areamediocirculo;

  double flowreald = aif! * flowr;

  if (unt == true) {
    return ((flowreald) / (ttArea)).roundToDouble();
  } else {
    return (flowreald) / (ttArea).roundToDouble();
  }
}

double? reductidropp(
  bool? velbool1,
  double? vel1,
  double? d1,
  double? d2,
  bool? d1bool,
  bool? d2bool,
) {
  double vreal = velbool1 == true ? (1) : (1 / 196.85);
  double vrrealf = (vel1! * vreal);

  double d1real = d1bool == true ? (0.0254) : (0.001);
  double d1reall = (d1! * d1real);

  double d2real = d2bool == true ? (0.0254) : (0.001);
  double d2reall = (d2! * d2real);

  double area1 = (math.pi * (d1reall * d1reall) / 4);
  double area2 = (math.pi * (d2reall * d2reall) / 4);

  double vlast = (vrrealf * area1) / area2;

  return (0.2 * ((1.2 * (vlast * vlast)) / 2)).roundToDouble();
}

String? operahalf(
  double? d1,
  double? d2,
  bool? d3,
  bool? undad,
) {
  if (d1 == null || d2 == null || d3 == null || undad == null) return null;

  double unidade = d3 == true ? 0.0254 : 0.001;
  double flowreal = undad == true ? (1 / 3600) : (0.0283 / 60);

  double value = (unidade * d2!);
  double areacir = (math.pi * math.pow((value), 2)) / 2;
  double florreal = (d1! * flowreal);

  double velocidad = (florreal / areacir);

  velocidad = double.parse(velocidad.toStringAsFixed(2));
  return velocidad.toString();
}

double? elbowdroopp(
  bool? velbool1,
  double? vel1,
  bool? k,
) {
  double vreal = velbool1 == true ? (1) : (1 / 196.85);
  double vrrealf = (vel1! * vreal);

  double kreal = k == true ? (0.8) : (0.9);

  return (kreal * (1.2 * ((vrrealf * vrrealf) / 2))).roundToDouble();
}

String? cfd(
  double? altura,
  double? diferenciatemperta,
  double? pression,
) {
  if (altura != null && diferenciatemperta != null && pression != null) {
    if (altura == 1 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/bzqtizgvba9x/10.png';
    } else if (altura == 1 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/jv187hjhph34/11.png';
    } else if (altura == 1 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/n53cs95gcjzg/12.png';
    } else if (altura == 1 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ank1hdh9p9e8/13.png';
    } else if (altura == 1 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/w4jpri8k3ynr/14.png';
    } else if (altura == 1 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/bmrm0yr4trdd/15.png';
    } else if (altura == 1 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ovvf6wd4ionl/16.png';
    } else if (altura == 1 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/407oixzkwqw3/17.png';
    } else if (altura == 1 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/4a7py1tyx792/18.png';

      //4m.
    } else if (altura == 2 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/a2x0o2dpthud/1.png';
    } else if (altura == 2 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/94f7iiyjk8hd/2.png';
    } else if (altura == 2 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/vatgwniubbxc/3.png';
    } else if (altura == 2 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/1l2c30ypo87n/4.png';
    } else if (altura == 2 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/9j08l637tuzf/5.png';
    } else if (altura == 2 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/o33lzeuldl18/6.png';
    } else if (altura == 2 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ym4t6wrv68fz/7.png';
    } else if (altura == 2 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/4c15iatipu48/8.png';
    } else if (altura == 2 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/85wysznincc3/9.png';

      //5m.
    } else if (altura == 3 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/kv8jehzha9wk/19.png';
    } else if (altura == 3 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/st02bd7xx7g4/20.png';
    } else if (altura == 3 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/quc9d30qzppa/21.png';
    } else if (altura == 3 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/lt6ulrvgmyqb/22.png';
    } else if (altura == 3 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/l8e1kgsqm632/23.png';
    } else if (altura == 3 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/aviusoopuevy/24.png';
    } else if (altura == 3 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/4ptu72di1lnt/25.png';
    } else if (altura == 3 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/vg5awmc1tjnc/26.png';
    } else if (altura == 3 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/vg5awmc1tjnc/26.png';

      //6m.
    } else if (altura == 4 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/pnwai2lgzxgh/28.png';
    } else if (altura == 4 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/v7e4ukab6zyl/29.png';
    } else if (altura == 4 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/2erlagy1sk4t/30.png';
    } else if (altura == 4 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/oc70rce9hrtg/31.png';
    } else if (altura == 4 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/ibanm0mvi4a5/32.png';
    } else if (altura == 4 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/zfys2stc6qwq/33.png';
    } else if (altura == 4 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/81tqcg01w26a/34.png';
    } else if (altura == 4 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/linxmejup069/35.png';
    } else if (altura == 4 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/lfzxqgfroxsm/36.png';

      //7m.
    } else if (altura == 5 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/14yhk4he4qhn/37.png';
    } else if (altura == 5 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/dzexhg83k1ko/38.png';
    } else if (altura == 5 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/18pbeaifu2fa/39.png';
    } else if (altura == 5 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/f7bm8wwvog5i/40.png';
    } else if (altura == 5 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/a36qgthc53yr/41.png';
    } else if (altura == 5 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/g358ajfmfoi3/42.png';
    } else if (altura == 5 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/sbizqcjnkne0/43.png';
    } else if (altura == 5 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/u0vngnbnmooz/44.png';
    } else if (altura == 5 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/b85h6cletc4m/45.png';

      //8m.
    } else if (altura == 6 && diferenciatemperta == 1 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/khm9y2whtlmr/46.png';
    } else if (altura == 6 && diferenciatemperta == 2 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/m1rfqvc4it4v/47.png';
    } else if (altura == 6 && diferenciatemperta == 3 && pression == 1) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/xruux9vqfh4t/48.png';
    } else if (altura == 6 && diferenciatemperta == 1 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/diwuyrcs3rcs/49.png';
    } else if (altura == 6 && diferenciatemperta == 2 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/rozmmmgiycpo/50.png';
    } else if (altura == 6 && diferenciatemperta == 3 && pression == 2) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/39subysnvzsb/51.png';
    } else if (altura == 6 && diferenciatemperta == 1 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/1sixz35fufiu/52.png';
    } else if (altura == 6 && diferenciatemperta == 2 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/3lyolwz95d6j/53.png';
    } else if (altura == 6 && diferenciatemperta == 3 && pression == 3) {
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/1u6ojy08ayp4/54.png';
    } else {
      return null;
    }
  }
}

double? halfdiamlenghd(double? hd) {
  if (hd == null) return null;

  return (hd! * 2);
}

double? sumarPRessure(List<double>? order) {
  // sumar todos los valores de la lista
  if (order == null || order.isEmpty) {
    return null;
  }

  double sum = 0.0;
  for (double value in order) {
    sum += value;
  }

  return sum;
}

double? inwgsum000401865(List<double>? order) {
  // sumar todos los valores de la lista
  if (order == null || order.isEmpty) {
    return null;
  }

  double sum = 0.0;
  for (double value in order) {
    sum += value;
  }

  return (sum * 0.00401865);
}

double? caidadepresuu(double? pasca) {
  // return pasca * 0.00401865; el resultado que solo sean 3 unidades despues del punto
  if (pasca != null) {
    double result = pasca * 0.00401865;
    return double.parse(result.toStringAsFixed(3));
  }
  return null;
}
