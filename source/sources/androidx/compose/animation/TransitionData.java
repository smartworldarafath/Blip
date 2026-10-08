package androidx.compose.animation;

import defpackage.jb;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransitionData {
    public final Fade a;
    public final Slide b;
    public final ChangeSize c;
    public final Scale d;
    public final boolean e;
    public final Map f;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.Map] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, LinkedHashMap linkedHashMap, int i) {
        this(fade, slide, changeSize, scale, r0, r7);
        boolean z;
        ?? r7;
        fade = (i & 1) != 0 ? null : fade;
        slide = (i & 2) != 0 ? null : slide;
        changeSize = (i & 4) != 0 ? null : changeSize;
        scale = (i & 8) != 0 ? null : scale;
        if ((i & 32) != 0) {
            z = false;
        } else {
            z = true;
        }
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        if ((i & 64) != 0) {
            r7 = EmptyMap.j;
            linkedHashMap2 = r7;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) obj;
        if (Intrinsics.a(this.a, transitionData.a) && Intrinsics.a(this.b, transitionData.b) && Intrinsics.a(this.c, transitionData.c) && Intrinsics.a(this.d, transitionData.d) && this.e == transitionData.e && Intrinsics.a(this.f, transitionData.f)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 0;
        Fade fade = this.a;
        if (fade == null) {
            hashCode = 0;
        } else {
            hashCode = fade.hashCode();
        }
        int i2 = hashCode * 31;
        Slide slide = this.b;
        if (slide == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = slide.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        ChangeSize changeSize = this.c;
        if (changeSize == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = changeSize.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Scale scale = this.d;
        if (scale != null) {
            i = scale.hashCode();
        }
        return this.f.hashCode() + jb.b((i4 + i) * 961, 31, this.e);
    }

    public final String toString() {
        return "TransitionData(fade=" + this.a + ", slide=" + this.b + ", changeSize=" + this.c + ", scale=" + this.d + ", veil=null, hold=" + this.e + ", effectsMap=" + this.f + ")";
    }

    public TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, boolean z, Map map) {
        this.a = fade;
        this.b = slide;
        this.c = changeSize;
        this.d = scale;
        this.e = z;
        this.f = map;
    }
}
