package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.text.AnnotatedStringResolveInlineContentKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.android.ui.settings.SettingsComposablesKt;
import net.blip.android.ui.transfer.TransferThumbnailStackKt;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class t2 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ t2(ImageVector imageVector, Color color, int i, int i2) {
        this.j = 8;
        this.l = imageVector;
        this.m = color;
        this.k = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.k;
        Object obj3 = this.m;
        Object obj4 = this.l;
        switch (i) {
            case 0:
                ((Integer) obj2).intValue();
                AnnotatedStringResolveInlineContentKt.a((AnnotatedString) obj4, (List) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj4).g(obj3, (Composer) obj, RecomposeScopeImplKt.a(i2) | 1);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                ComposablesKt.e((Modifier) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                ComposablesKt.f((AnnotatedString) obj4, (Map) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                CompositionLocalKt.b((ProvidedValue[]) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).intValue();
                CompositionLocalKt.a((ProvidedValue) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    lazyLayoutItemProvider.e(i2, obj3, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                ((PagerLazyLayoutItemProvider) obj4).e(i2, obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                SettingsComposablesKt.c((ImageVector) obj4, (Color) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), i2);
                return unit;
            case KeyModifiers.a /* 9 */:
                ((Integer) obj2).intValue();
                TextKt.a((TextStyle) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case KeyModifiers.b /* 10 */:
                ((Integer) obj2).getClass();
                TransferThumbnailStackKt.a((Modifier) obj4, (Transfer) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                ((Integer) obj2).intValue();
                ((Transition) obj4).a(obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }

    public /* synthetic */ t2(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        this.j = 6;
        this.l = lazyLayoutItemProvider;
        this.k = i;
        this.m = obj;
    }

    public /* synthetic */ t2(PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, int i, Object obj, int i2) {
        this.j = 7;
        this.l = pagerLazyLayoutItemProvider;
        this.k = i;
        this.m = obj;
    }

    public /* synthetic */ t2(int i, int i2, Object obj, Object obj2) {
        this.j = i2;
        this.l = obj;
        this.m = obj2;
        this.k = i;
    }
}
