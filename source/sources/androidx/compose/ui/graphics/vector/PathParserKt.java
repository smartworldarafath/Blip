package androidx.compose.ui.graphics.vector;

import android.graphics.Path;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.vector.PathNode;
import defpackage.k8;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PathParserKt {
    public static final void a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, boolean z, boolean z2) {
        double d8;
        double d9;
        boolean z3;
        double d10 = d5;
        double d11 = (d7 / 180.0d) * 3.141592653589793d;
        double cos = Math.cos(d11);
        double sin = Math.sin(d11);
        double d12 = ((d2 * sin) + (d * cos)) / d10;
        double d13 = ((d2 * cos) + ((-d) * sin)) / d6;
        double d14 = ((d4 * sin) + (d3 * cos)) / d10;
        double d15 = ((d4 * cos) + ((-d3) * sin)) / d6;
        double d16 = d12 - d14;
        double d17 = d13 - d15;
        double d18 = (d12 + d14) / 2.0d;
        double d19 = (d13 + d15) / 2.0d;
        double d20 = (d17 * d17) + (d16 * d16);
        if (d20 != 0.0d) {
            double d21 = (1.0d / d20) - 0.25d;
            if (d21 < 0.0d) {
                double sqrt = (float) (Math.sqrt(d20) / 1.99999d);
                a(path, d, d2, d3, d4, d10 * sqrt, d6 * sqrt, d7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d21);
            double d22 = d16 * sqrt2;
            double d23 = sqrt2 * d17;
            if (z == z2) {
                d8 = d18 - d23;
                d9 = d19 + d22;
            } else {
                d8 = d18 + d23;
                d9 = d19 - d22;
            }
            double atan2 = Math.atan2(d13 - d9, d12 - d8);
            double atan22 = Math.atan2(d15 - d9, d14 - d8) - atan2;
            if (atan22 >= 0.0d) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 != z3) {
                if (atan22 > 0.0d) {
                    atan22 -= 6.283185307179586d;
                } else {
                    atan22 += 6.283185307179586d;
                }
            }
            double d24 = d8 * d10;
            double d25 = d9 * d6;
            double d26 = (d24 * cos) - (d25 * sin);
            double d27 = (d25 * cos) + (d24 * sin);
            int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
            double cos2 = Math.cos(d11);
            double sin2 = Math.sin(d11);
            double cos3 = Math.cos(atan2);
            double sin3 = Math.sin(atan2);
            double d28 = -d10;
            double d29 = d28 * cos2;
            double d30 = d6 * sin2;
            double d31 = (d29 * sin3) - (d30 * cos3);
            double d32 = d28 * sin2;
            double d33 = d6 * cos2;
            double d34 = (cos3 * d33) + (sin3 * d32);
            double d35 = atan22 / ceil;
            double d36 = atan2;
            double d37 = d31;
            int i = 0;
            double d38 = d34;
            double d39 = d2;
            while (i < ceil) {
                double d40 = d36 + d35;
                double sin4 = Math.sin(d40);
                double cos4 = Math.cos(d40);
                int i2 = ceil;
                double d41 = (((d10 * cos2) * cos4) + d26) - (d30 * sin4);
                double d42 = (d33 * sin4) + (d10 * sin2 * cos4) + d27;
                double d43 = (d29 * sin4) - (d30 * cos4);
                double d44 = (cos4 * d33) + (sin4 * d32);
                double d45 = d40 - d36;
                double tan = Math.tan(d45 / 2.0d);
                double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d45)) / 3.0d;
                ((AndroidPath) path).e((float) ((d37 * sqrt3) + d), (float) ((d38 * sqrt3) + d39), (float) (d41 - (sqrt3 * d43)), (float) (d42 - (sqrt3 * d44)), (float) d41, (float) d42);
                d35 = d35;
                sin2 = sin2;
                d26 = d26;
                d = d41;
                i++;
                d32 = d32;
                d36 = d40;
                d38 = d44;
                d37 = d43;
                ceil = i2;
                d39 = d42;
                d10 = d5;
            }
        }
    }

    public static final void b(List list, Path path) {
        boolean z;
        PathNode pathNode;
        android.graphics.Path path2;
        int i;
        float f;
        int i2;
        PathNode pathNode2;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        android.graphics.Path path3;
        float f10;
        float f11;
        float f12;
        List list2 = list;
        AndroidPath androidPath = (AndroidPath) path;
        android.graphics.Path path4 = androidPath.a;
        android.graphics.Path path5 = androidPath.a;
        Path.FillType fillType = path4.getFillType();
        Path.FillType fillType2 = Path.FillType.EVEN_ODD;
        if (fillType == fillType2) {
            z = true;
        } else {
            z = false;
        }
        path5.rewind();
        if (!z) {
            fillType2 = Path.FillType.WINDING;
        }
        path5.setFillType(fillType2);
        if (list2.isEmpty()) {
            pathNode = PathNode.Close.c;
        } else {
            pathNode = (PathNode) list2.get(0);
        }
        int size = list2.size();
        float f13 = 0.0f;
        int i3 = 0;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        float f19 = 0.0f;
        while (i3 < size) {
            PathNode pathNode3 = (PathNode) list2.get(i3);
            if (pathNode3 instanceof PathNode.Close) {
                path5.close();
                path2 = path5;
                i = size;
                f = f13;
                i2 = i3;
                pathNode2 = pathNode3;
                f14 = f18;
                f16 = f14;
                f15 = f19;
                f17 = f15;
            } else {
                if (pathNode3 instanceof PathNode.RelativeMoveTo) {
                    PathNode.RelativeMoveTo relativeMoveTo = (PathNode.RelativeMoveTo) pathNode3;
                    float f20 = relativeMoveTo.c;
                    f16 += f20;
                    float f21 = relativeMoveTo.d;
                    f17 += f21;
                    path5.rMoveTo(f20, f21);
                    path2 = path5;
                    i = size;
                    f = f13;
                    i2 = i3;
                    f18 = f16;
                    f19 = f17;
                } else {
                    if (pathNode3 instanceof PathNode.MoveTo) {
                        PathNode.MoveTo moveTo = (PathNode.MoveTo) pathNode3;
                        float f22 = moveTo.c;
                        float f23 = moveTo.d;
                        path5.moveTo(f22, f23);
                        f17 = f23;
                        f19 = f17;
                        path2 = path5;
                        f16 = f22;
                        f18 = f16;
                    } else {
                        if (pathNode3 instanceof PathNode.RelativeLineTo) {
                            PathNode.RelativeLineTo relativeLineTo = (PathNode.RelativeLineTo) pathNode3;
                            float f24 = relativeLineTo.d;
                            float f25 = relativeLineTo.c;
                            path5.rLineTo(f25, f24);
                            f16 += f25;
                            f17 += f24;
                        } else if (pathNode3 instanceof PathNode.LineTo) {
                            PathNode.LineTo lineTo = (PathNode.LineTo) pathNode3;
                            float f26 = lineTo.d;
                            float f27 = lineTo.c;
                            androidPath.g(f27, f26);
                            f16 = f27;
                            path2 = path5;
                            f17 = f26;
                        } else if (pathNode3 instanceof PathNode.RelativeHorizontalTo) {
                            float f28 = ((PathNode.RelativeHorizontalTo) pathNode3).c;
                            path5.rLineTo(f28, f13);
                            f16 += f28;
                        } else if (pathNode3 instanceof PathNode.HorizontalTo) {
                            float f29 = ((PathNode.HorizontalTo) pathNode3).c;
                            androidPath.g(f29, f17);
                            f16 = f29;
                        } else if (pathNode3 instanceof PathNode.RelativeVerticalTo) {
                            float f30 = ((PathNode.RelativeVerticalTo) pathNode3).c;
                            path5.rLineTo(f13, f30);
                            f17 += f30;
                        } else if (pathNode3 instanceof PathNode.VerticalTo) {
                            float f31 = ((PathNode.VerticalTo) pathNode3).c;
                            androidPath.g(f16, f31);
                            f17 = f31;
                        } else {
                            if (pathNode3 instanceof PathNode.RelativeCurveTo) {
                                PathNode.RelativeCurveTo relativeCurveTo = (PathNode.RelativeCurveTo) pathNode3;
                                path5.rCubicTo(relativeCurveTo.c, relativeCurveTo.d, relativeCurveTo.e, relativeCurveTo.f, relativeCurveTo.g, relativeCurveTo.h);
                                path3 = path5;
                                f10 = relativeCurveTo.e + f16;
                                f11 = relativeCurveTo.f + f17;
                                f16 += relativeCurveTo.g;
                                f12 = relativeCurveTo.h;
                            } else {
                                android.graphics.Path path6 = path5;
                                if (pathNode3 instanceof PathNode.CurveTo) {
                                    PathNode.CurveTo curveTo = (PathNode.CurveTo) pathNode3;
                                    androidPath.e(curveTo.c, curveTo.d, curveTo.e, curveTo.f, curveTo.g, curveTo.h);
                                    f4 = curveTo.e;
                                    f5 = curveTo.f;
                                    f6 = curveTo.g;
                                    f7 = curveTo.h;
                                } else if (pathNode3 instanceof PathNode.RelativeReflectiveCurveTo) {
                                    if (pathNode.a) {
                                        f8 = f16 - f14;
                                        f9 = f17 - f15;
                                    } else {
                                        f8 = f13;
                                        f9 = f8;
                                    }
                                    PathNode.RelativeReflectiveCurveTo relativeReflectiveCurveTo = (PathNode.RelativeReflectiveCurveTo) pathNode3;
                                    path6.rCubicTo(f8, f9, relativeReflectiveCurveTo.c, relativeReflectiveCurveTo.d, relativeReflectiveCurveTo.e, relativeReflectiveCurveTo.f);
                                    path3 = path6;
                                    f10 = relativeReflectiveCurveTo.c + f16;
                                    f11 = relativeReflectiveCurveTo.d + f17;
                                    f16 += relativeReflectiveCurveTo.e;
                                    f12 = relativeReflectiveCurveTo.f;
                                } else if (pathNode3 instanceof PathNode.ReflectiveCurveTo) {
                                    if (pathNode.a) {
                                        f16 = (f16 * 2.0f) - f14;
                                        f17 = (2.0f * f17) - f15;
                                    }
                                    PathNode.ReflectiveCurveTo reflectiveCurveTo = (PathNode.ReflectiveCurveTo) pathNode3;
                                    androidPath.e(f16, f17, reflectiveCurveTo.c, reflectiveCurveTo.d, reflectiveCurveTo.e, reflectiveCurveTo.f);
                                    f4 = reflectiveCurveTo.c;
                                    f5 = reflectiveCurveTo.d;
                                    f6 = reflectiveCurveTo.e;
                                    f7 = reflectiveCurveTo.f;
                                } else {
                                    if (pathNode3 instanceof PathNode.RelativeQuadTo) {
                                        PathNode.RelativeQuadTo relativeQuadTo = (PathNode.RelativeQuadTo) pathNode3;
                                        float f32 = relativeQuadTo.f;
                                        float f33 = relativeQuadTo.e;
                                        float f34 = relativeQuadTo.d;
                                        float f35 = relativeQuadTo.c;
                                        path6.rQuadTo(f35, f34, f33, f32);
                                        float f36 = f35 + f16;
                                        f15 = f34 + f17;
                                        f16 += f33;
                                        f17 += f32;
                                        f14 = f36;
                                    } else if (pathNode3 instanceof PathNode.QuadTo) {
                                        PathNode.QuadTo quadTo = (PathNode.QuadTo) pathNode3;
                                        float f37 = quadTo.f;
                                        float f38 = quadTo.e;
                                        f15 = quadTo.d;
                                        float f39 = quadTo.c;
                                        path6.quadTo(f39, f15, f38, f37);
                                        f17 = f37;
                                        f16 = f38;
                                        path2 = path6;
                                        i = size;
                                        f = f13;
                                        i2 = i3;
                                        pathNode2 = pathNode3;
                                        f14 = f39;
                                    } else if (pathNode3 instanceof PathNode.RelativeReflectiveQuadTo) {
                                        if (pathNode.b) {
                                            f2 = f16 - f14;
                                            f3 = f17 - f15;
                                        } else {
                                            f2 = f13;
                                            f3 = f2;
                                        }
                                        PathNode.RelativeReflectiveQuadTo relativeReflectiveQuadTo = (PathNode.RelativeReflectiveQuadTo) pathNode3;
                                        float f40 = relativeReflectiveQuadTo.d;
                                        float f41 = relativeReflectiveQuadTo.c;
                                        path6.rQuadTo(f2, f3, f41, f40);
                                        float f42 = f2 + f16;
                                        float f43 = f3 + f17;
                                        f16 += f41;
                                        f17 += f40;
                                        f14 = f42;
                                        f15 = f43;
                                    } else if (pathNode3 instanceof PathNode.ReflectiveQuadTo) {
                                        if (pathNode.b) {
                                            f16 = (f16 * 2.0f) - f14;
                                            f17 = (2.0f * f17) - f15;
                                        }
                                        PathNode.ReflectiveQuadTo reflectiveQuadTo = (PathNode.ReflectiveQuadTo) pathNode3;
                                        float f44 = reflectiveQuadTo.d;
                                        float f45 = reflectiveQuadTo.c;
                                        path6.quadTo(f16, f17, f45, f44);
                                        path2 = path6;
                                        i = size;
                                        f = f13;
                                        i2 = i3;
                                        f14 = f16;
                                        f15 = f17;
                                        pathNode2 = pathNode3;
                                        f16 = f45;
                                        f17 = f44;
                                    } else if (pathNode3 instanceof PathNode.RelativeArcTo) {
                                        PathNode.RelativeArcTo relativeArcTo = (PathNode.RelativeArcTo) pathNode3;
                                        float f46 = relativeArcTo.h + f16;
                                        float f47 = relativeArcTo.i + f17;
                                        path2 = path6;
                                        i2 = i3;
                                        f = 0.0f;
                                        i = size;
                                        androidPath = androidPath;
                                        a(androidPath, f16, f17, f46, f47, relativeArcTo.c, relativeArcTo.d, relativeArcTo.e, relativeArcTo.f, relativeArcTo.g);
                                        f14 = f46;
                                        f16 = f14;
                                        f15 = f47;
                                        f17 = f15;
                                        pathNode2 = pathNode3;
                                    } else {
                                        path2 = path6;
                                        i = size;
                                        f = f13;
                                        i2 = i3;
                                        if (pathNode3 instanceof PathNode.ArcTo) {
                                            PathNode.ArcTo arcTo = (PathNode.ArcTo) pathNode3;
                                            float f48 = arcTo.i;
                                            float f49 = arcTo.h;
                                            pathNode2 = pathNode3;
                                            androidPath = androidPath;
                                            a(androidPath, f16, f17, f49, f48, arcTo.c, arcTo.d, arcTo.e, arcTo.f, arcTo.g);
                                            f15 = f48;
                                            f17 = f15;
                                            f14 = f49;
                                            f16 = f14;
                                        } else {
                                            k8.e();
                                            return;
                                        }
                                    }
                                    path2 = path6;
                                }
                                f16 = f6;
                                f17 = f7;
                                path2 = path6;
                                i = size;
                                f = f13;
                                i2 = i3;
                                pathNode2 = pathNode3;
                                f14 = f4;
                                f15 = f5;
                            }
                            f17 += f12;
                            f15 = f11;
                            path2 = path3;
                            i = size;
                            f = f13;
                            i2 = i3;
                            pathNode2 = pathNode3;
                            f14 = f10;
                        }
                        path2 = path5;
                    }
                    i = size;
                    f = f13;
                    i2 = i3;
                }
                pathNode2 = pathNode3;
            }
            i3 = i2 + 1;
            list2 = list;
            path5 = path2;
            size = i;
            pathNode = pathNode2;
            f13 = f;
        }
    }
}
