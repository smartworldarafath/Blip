package androidx.compose.animation;

import defpackage.q;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EnterTransition {
    public static final EnterTransition a = new EnterTransitionImpl(new TransitionData((Fade) null, (Slide) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 127));

    public final EnterTransition a(EnterTransition enterTransition) {
        Fade fade = ((EnterTransitionImpl) enterTransition).b.a;
        if (fade == null) {
            fade = ((EnterTransitionImpl) this).b.a;
        }
        TransitionData transitionData = ((EnterTransitionImpl) enterTransition).b;
        Slide slide = transitionData.b;
        if (slide == null) {
            slide = ((EnterTransitionImpl) this).b.b;
        }
        ChangeSize changeSize = transitionData.c;
        if (changeSize == null) {
            changeSize = ((EnterTransitionImpl) this).b.c;
        }
        Scale scale = transitionData.d;
        if (scale == null) {
            scale = ((EnterTransitionImpl) this).b.d;
        }
        Map map = ((EnterTransitionImpl) this).b.f;
        Map map2 = transitionData.f;
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return new EnterTransitionImpl(new TransitionData(fade, slide, changeSize, scale, linkedHashMap, 32));
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof EnterTransition) && ((EnterTransitionImpl) ((EnterTransition) obj)).b.equals(((EnterTransitionImpl) this).b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((EnterTransitionImpl) this).b.hashCode();
    }

    public final String toString() {
        String str;
        String str2;
        String str3;
        if (equals(a)) {
            return "EnterTransition.None";
        }
        TransitionData transitionData = ((EnterTransitionImpl) this).b;
        Fade fade = transitionData.a;
        String str4 = null;
        if (fade != null) {
            str = fade.toString();
        } else {
            str = null;
        }
        Slide slide = transitionData.b;
        if (slide != null) {
            str2 = slide.toString();
        } else {
            str2 = null;
        }
        ChangeSize changeSize = transitionData.c;
        if (changeSize != null) {
            str3 = changeSize.toString();
        } else {
            str3 = null;
        }
        Scale scale = transitionData.d;
        if (scale != null) {
            str4 = scale.toString();
        }
        StringBuilder o = q.o("EnterTransition: Fade - ", str, ", Slide - ", str2, ", Shrink - ");
        o.append(str3);
        o.append(", Scale - ");
        o.append(str4);
        o.append(", Veil - null");
        return o.toString();
    }
}
