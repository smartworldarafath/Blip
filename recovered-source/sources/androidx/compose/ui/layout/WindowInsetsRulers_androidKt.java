package androidx.compose.ui.layout;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.layout.WindowInsetsRulers;
import androidx.compose.ui.node.LookaheadCapablePlaceable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WindowInsetsRulers_androidKt {
    public static final MutableIntObjectMap a;
    public static final WindowInsetsRulers[] b;

    static {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(8);
        WindowInsetsRulers.a.getClass();
        WindowInsetsRulers windowInsetsRulers = WindowInsetsRulers.Companion.g;
        mutableIntObjectMap.i(1, windowInsetsRulers);
        WindowInsetsRulers windowInsetsRulers2 = WindowInsetsRulers.Companion.f;
        mutableIntObjectMap.i(2, windowInsetsRulers2);
        WindowInsetsRulers windowInsetsRulers3 = WindowInsetsRulers.Companion.b;
        mutableIntObjectMap.i(4, windowInsetsRulers3);
        WindowInsetsRulers windowInsetsRulers4 = WindowInsetsRulers.Companion.d;
        mutableIntObjectMap.i(8, windowInsetsRulers4);
        WindowInsetsRulers windowInsetsRulers5 = WindowInsetsRulers.Companion.h;
        mutableIntObjectMap.i(16, windowInsetsRulers5);
        WindowInsetsRulers windowInsetsRulers6 = WindowInsetsRulers.Companion.e;
        mutableIntObjectMap.i(32, windowInsetsRulers6);
        WindowInsetsRulers windowInsetsRulers7 = WindowInsetsRulers.Companion.i;
        mutableIntObjectMap.i(64, windowInsetsRulers7);
        WindowInsetsRulers windowInsetsRulers8 = WindowInsetsRulers.Companion.c;
        mutableIntObjectMap.i(128, windowInsetsRulers8);
        a = mutableIntObjectMap;
        b = new WindowInsetsRulers[]{windowInsetsRulers, windowInsetsRulers2, windowInsetsRulers3, windowInsetsRulers7, windowInsetsRulers5, windowInsetsRulers6, windowInsetsRulers4, WindowInsetsRulers.Companion.j, windowInsetsRulers8};
    }

    public static final void a(RulerScope rulerScope, RectRulers rectRulers, long j, int i, int i2) {
        if (!ValueInsets.a(j, -1L)) {
            LookaheadCapablePlaceable.ResettableRulerScope resettableRulerScope = (LookaheadCapablePlaceable.ResettableRulerScope) rulerScope;
            resettableRulerScope.a(rectRulers.b(), (int) ((j >>> 48) & 65535));
            resettableRulerScope.a(rectRulers.c(), (int) ((j >>> 32) & 65535));
            resettableRulerScope.a(rectRulers.d(), i - ((int) ((j >>> 16) & 65535)));
            resettableRulerScope.a(rectRulers.a(), i2 - ((int) (j & 65535)));
        }
    }
}
