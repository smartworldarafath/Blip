package net.blip.android.ui.util;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UmbrellaContentPickerType {
    public static final UmbrellaContentPickerType j;
    public static final UmbrellaContentPickerType k;
    public static final UmbrellaContentPickerType l;
    public static final UmbrellaContentPickerType m;
    public static final UmbrellaContentPickerType n;
    public static final UmbrellaContentPickerType o;
    public static final /* synthetic */ UmbrellaContentPickerType[] p;

    /* JADX WARN: Type inference failed for: r0v0, types: [net.blip.android.ui.util.UmbrellaContentPickerType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [net.blip.android.ui.util.UmbrellaContentPickerType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [net.blip.android.ui.util.UmbrellaContentPickerType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [net.blip.android.ui.util.UmbrellaContentPickerType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [net.blip.android.ui.util.UmbrellaContentPickerType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v2, types: [net.blip.android.ui.util.UmbrellaContentPickerType, java.lang.Enum] */
    static {
        ?? r0 = new Enum("PhotosAndVideos", 0);
        j = r0;
        ?? r1 = new Enum("Files", 1);
        k = r1;
        ?? r2 = new Enum("Folders", 2);
        l = r2;
        ?? r3 = new Enum("Camera", 3);
        m = r3;
        ?? r4 = new Enum("Audio", 4);
        n = r4;
        ?? r5 = new Enum("Clipboard", 5);
        o = r5;
        UmbrellaContentPickerType[] umbrellaContentPickerTypeArr = {r0, r1, r2, r3, r4, r5};
        p = umbrellaContentPickerTypeArr;
        EnumEntriesKt.a(umbrellaContentPickerTypeArr);
    }

    public static UmbrellaContentPickerType valueOf(String str) {
        return (UmbrellaContentPickerType) Enum.valueOf(UmbrellaContentPickerType.class, str);
    }

    public static UmbrellaContentPickerType[] values() {
        return (UmbrellaContentPickerType[]) p.clone();
    }
}
