package net.blip.shared;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LightDarkTheme {
    public static final LightDarkTheme j;
    public static final LightDarkTheme k;
    public static final /* synthetic */ LightDarkTheme[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, net.blip.shared.LightDarkTheme] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, net.blip.shared.LightDarkTheme] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, net.blip.shared.LightDarkTheme] */
    static {
        ?? r0 = new Enum("System", 0);
        j = r0;
        ?? r1 = new Enum("Light", 1);
        ?? r2 = new Enum("Dark", 2);
        k = r2;
        LightDarkTheme[] lightDarkThemeArr = {r0, r1, r2};
        l = lightDarkThemeArr;
        EnumEntriesKt.a(lightDarkThemeArr);
    }

    public static LightDarkTheme valueOf(String str) {
        return (LightDarkTheme) Enum.valueOf(LightDarkTheme.class, str);
    }

    public static LightDarkTheme[] values() {
        return (LightDarkTheme[]) l.clone();
    }
}
