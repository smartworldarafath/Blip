package net.blip.libblip;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Platform {
    public static final Companion j;
    public static final /* synthetic */ Platform[] k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, net.blip.libblip.Platform] */
    /* JADX WARN: Type inference failed for: r0v2, types: [net.blip.libblip.Platform$Companion, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, net.blip.libblip.Platform] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, net.blip.libblip.Platform] */
    static {
        Platform[] platformArr = {new Enum("Android", 0), new Enum("Windows", 1), new Enum("Linux", 2)};
        k = platformArr;
        EnumEntriesKt.a(platformArr);
        j = new Object();
    }

    public static Platform valueOf(String str) {
        return (Platform) Enum.valueOf(Platform.class, str);
    }

    public static Platform[] values() {
        return (Platform[]) k.clone();
    }
}
