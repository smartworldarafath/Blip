package androidx.compose.foundation.gestures;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Orientation {
    public static final Orientation j;
    public static final Orientation k;
    public static final /* synthetic */ Orientation[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.gestures.Orientation, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.foundation.gestures.Orientation, java.lang.Enum] */
    static {
        ?? r0 = new Enum("Vertical", 0);
        j = r0;
        ?? r1 = new Enum("Horizontal", 1);
        k = r1;
        Orientation[] orientationArr = {r0, r1};
        l = orientationArr;
        EnumEntriesKt.a(orientationArr);
    }

    public static Orientation valueOf(String str) {
        return (Orientation) Enum.valueOf(Orientation.class, str);
    }

    public static Orientation[] values() {
        return (Orientation[]) l.clone();
    }
}
