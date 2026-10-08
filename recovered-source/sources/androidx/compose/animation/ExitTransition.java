package androidx.compose.animation;

import defpackage.q;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ExitTransition {
    public static final ExitTransition a;
    public static final ExitTransition b;

    static {
        LinkedHashMap linkedHashMap = null;
        Fade fade = null;
        Slide slide = null;
        ChangeSize changeSize = null;
        Scale scale = null;
        a = new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, linkedHashMap, 127));
        b = new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, linkedHashMap, 95));
    }

    public final ExitTransition a(ExitTransition exitTransition) {
        boolean z;
        Fade fade = ((ExitTransitionImpl) exitTransition).c.a;
        if (fade == null) {
            fade = ((ExitTransitionImpl) this).c.a;
        }
        TransitionData transitionData = ((ExitTransitionImpl) exitTransition).c;
        Slide slide = transitionData.b;
        if (slide == null) {
            slide = ((ExitTransitionImpl) this).c.b;
        }
        ChangeSize changeSize = transitionData.c;
        if (changeSize == null) {
            changeSize = ((ExitTransitionImpl) this).c.c;
        }
        Scale scale = transitionData.d;
        if (scale == null) {
            scale = ((ExitTransitionImpl) this).c.d;
        }
        boolean z2 = transitionData.e;
        TransitionData transitionData2 = ((ExitTransitionImpl) this).c;
        if (!z2 && !transitionData2.e) {
            z = false;
        } else {
            z = true;
        }
        Map map = transitionData2.f;
        Map map2 = transitionData.f;
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, z, linkedHashMap));
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ExitTransition) && ((ExitTransitionImpl) ((ExitTransition) obj)).c.equals(((ExitTransitionImpl) this).c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((ExitTransitionImpl) this).c.hashCode();
    }

    public final String toString() {
        String str;
        String str2;
        String str3;
        if (equals(a)) {
            return "ExitTransition.None";
        }
        if (equals(b)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        TransitionData transitionData = ((ExitTransitionImpl) this).c;
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
        boolean z = transitionData.e;
        StringBuilder o = q.o("ExitTransition:  Fade - ", str, ",  Slide - ", str2, ",  Shrink - ");
        q.B(o, str3, ",  Scale - ", str4, ",  Veil - null,  KeepUntilTransitionsFinished - ");
        o.append(z);
        return o.toString();
    }
}
