package androidx.compose.ui.graphics;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Path {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Direction {
        public static final /* synthetic */ Direction[] j;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.graphics.Path$Direction] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.graphics.Path$Direction] */
        static {
            Direction[] directionArr = {new Enum("CounterClockwise", 0), new Enum("Clockwise", 1)};
            j = directionArr;
            EnumEntriesKt.a(directionArr);
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) j.clone();
        }
    }

    static void b(AndroidPath androidPath, AndroidPath androidPath2) {
        androidPath.a.addPath(androidPath2.a, Float.intBitsToFloat(0), Float.intBitsToFloat(0));
    }

    static void c(Path path, Rect rect) {
        Direction[] directionArr = Direction.j;
        AndroidPath androidPath = (AndroidPath) path;
        float f = rect.a;
        float f2 = rect.d;
        float f3 = rect.c;
        float f4 = rect.b;
        if (Float.isNaN(f) || Float.isNaN(f4) || Float.isNaN(f3) || Float.isNaN(f2)) {
            AndroidPath_androidKt.b("Invalid rectangle, make sure no value is NaN");
        }
        if (androidPath.b == null) {
            androidPath.b = new RectF();
        }
        RectF rectF = androidPath.b;
        rectF.getClass();
        rectF.set(f, f4, f3, f2);
        android.graphics.Path path2 = androidPath.a;
        RectF rectF2 = androidPath.b;
        rectF2.getClass();
        path2.addRect(rectF2, Path.Direction.CCW);
    }

    static void d(Path path, RoundRect roundRect) {
        Direction[] directionArr = Direction.j;
        AndroidPath androidPath = (AndroidPath) path;
        if (androidPath.b == null) {
            androidPath.b = new RectF();
        }
        RectF rectF = androidPath.b;
        rectF.getClass();
        float f = roundRect.a;
        long j = roundRect.h;
        long j2 = roundRect.g;
        long j3 = roundRect.f;
        long j4 = roundRect.e;
        rectF.set(f, roundRect.b, roundRect.c, roundRect.d);
        if (androidPath.c == null) {
            androidPath.c = new float[8];
        }
        float[] fArr = androidPath.c;
        fArr.getClass();
        fArr[0] = Float.intBitsToFloat((int) (j4 >> 32));
        fArr[1] = Float.intBitsToFloat((int) (j4 & 4294967295L));
        fArr[2] = Float.intBitsToFloat((int) (j3 >> 32));
        fArr[3] = Float.intBitsToFloat((int) (j3 & 4294967295L));
        fArr[4] = Float.intBitsToFloat((int) (j2 >> 32));
        fArr[5] = Float.intBitsToFloat((int) (j2 & 4294967295L));
        fArr[6] = Float.intBitsToFloat((int) (j >> 32));
        fArr[7] = Float.intBitsToFloat((int) (j & 4294967295L));
        android.graphics.Path path2 = androidPath.a;
        RectF rectF2 = androidPath.b;
        rectF2.getClass();
        float[] fArr2 = androidPath.c;
        fArr2.getClass();
        path2.addRoundRect(rectF2, fArr2, Path.Direction.CCW);
    }

    default void a(Rect rect, float f, float f2) {
        float f3 = f * 57.29578f;
        float f4 = f2 * 57.29578f;
        AndroidPath androidPath = (AndroidPath) this;
        float f5 = rect.a;
        float f6 = rect.b;
        float f7 = rect.c;
        float f8 = rect.d;
        if (androidPath.b == null) {
            androidPath.b = new RectF();
        }
        RectF rectF = androidPath.b;
        rectF.getClass();
        rectF.set(f5, f6, f7, f8);
        RectF rectF2 = androidPath.b;
        rectF2.getClass();
        androidPath.a.arcTo(rectF2, f3, f4, false);
    }
}
