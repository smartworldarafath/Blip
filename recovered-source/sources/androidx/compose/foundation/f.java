package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
        ComputedProvidableCompositionLocal computedProvidableCompositionLocal = OverscrollKt.a;
        int i = AndroidOverscroll_androidKt.a;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.b;
        PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) compositionLocalAccessorScope;
        persistentCompositionLocalMap.getClass();
        Context context = (Context) CompositionLocalMapKt.a(persistentCompositionLocalMap, staticProvidableCompositionLocal);
        PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) compositionLocalAccessorScope;
        Density density = (Density) CompositionLocalMapKt.a(persistentCompositionLocalMap2, CompositionLocalsKt.h);
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) CompositionLocalMapKt.a(persistentCompositionLocalMap2, OverscrollConfiguration_androidKt.a);
        if (overscrollConfiguration == null) {
            return null;
        }
        return new AndroidEdgeEffectOverscrollFactory(context, density, overscrollConfiguration.a, overscrollConfiguration.b);
    }
}
