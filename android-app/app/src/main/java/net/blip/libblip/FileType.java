package net.blip.libblip;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileType {
    public static final Companion j;
    public static final FileType k;
    public static final FileType l;
    public static final FileType m;
    public static final FileType n;
    public static final FileType o;
    public static final FileType p;
    public static final FileType q;
    public static final FileType r;
    public static final FileType s;
    public static final FileType t;
    public static final FileType u;
    public static final FileType v;
    public static final FileType w;
    public static final FileType x;
    public static final /* synthetic */ FileType[] y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, net.blip.libblip.FileType$Companion] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, net.blip.libblip.FileType] */
    static {
        ?? r0 = new Enum("FOLDER", 0);
        k = r0;
        ?? r1 = new Enum("RAW_PHOTO", 1);
        l = r1;
        ?? r2 = new Enum("PHOTO", 2);
        m = r2;
        ?? r3 = new Enum("VECTOR_IMAGE", 3);
        n = r3;
        ?? r4 = new Enum("VIDEO", 4);
        o = r4;
        ?? r5 = new Enum("PLAIN_TEXT", 5);
        p = r5;
        ?? r6 = new Enum("RICH_TEXT", 6);
        q = r6;
        ?? r7 = new Enum("SPREADSHEET", 7);
        r = r7;
        ?? r8 = new Enum("SLIDES", 8);
        s = r8;
        ?? r9 = new Enum("CODE", 9);
        t = r9;
        ?? r10 = new Enum("AUDIO", 10);
        u = r10;
        ?? r11 = new Enum("COMPRESSED", 11);
        v = r11;
        ?? r12 = new Enum("URL", 12);
        w = r12;
        ?? r13 = new Enum("UNKNOWN", 13);
        x = r13;
        FileType[] fileTypeArr = {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13};
        y = fileTypeArr;
        EnumEntriesKt.a(fileTypeArr);
        j = new Object();
    }

    public static FileType valueOf(String str) {
        return (FileType) Enum.valueOf(FileType.class, str);
    }

    public static FileType[] values() {
        return (FileType[]) y.clone();
    }
}
