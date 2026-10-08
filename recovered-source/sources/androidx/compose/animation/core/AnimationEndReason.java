package androidx.compose.animation.core;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimationEndReason {
    public static final AnimationEndReason j;
    public static final AnimationEndReason k;
    public static final /* synthetic */ AnimationEndReason[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.animation.core.AnimationEndReason] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.animation.core.AnimationEndReason] */
    static {
        ?? r0 = new Enum("BoundReached", 0);
        j = r0;
        ?? r1 = new Enum("Finished", 1);
        k = r1;
        AnimationEndReason[] animationEndReasonArr = {r0, r1};
        l = animationEndReasonArr;
        EnumEntriesKt.a(animationEndReasonArr);
    }

    public static AnimationEndReason valueOf(String str) {
        return (AnimationEndReason) Enum.valueOf(AnimationEndReason.class, str);
    }

    public static AnimationEndReason[] values() {
        return (AnimationEndReason[]) l.clone();
    }
}
