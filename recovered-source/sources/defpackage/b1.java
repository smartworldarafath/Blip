package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactoryKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material.SnackbarHostKt;
import androidx.compose.material.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.transfer.TransferCreationScreenKt;
import net.blip.libblip.Device;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.TransferChoosePeerViewModel;
import net.blip.libblip.User;
import net.blip.shared.AvatarEditorKt;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b1 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ b1(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i, Object obj2, int i2) {
        this.j = 11;
        this.m = lazyLayoutItemProvider;
        this.n = obj;
        this.l = i;
        this.k = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        int i2 = this.l;
        Object obj3 = this.k;
        Object obj4 = this.n;
        Unit unit = Unit.a;
        Object obj5 = this.m;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidDialog_androidKt.a((Function0) obj5, (DialogProperties) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                AndroidSelectionHandles_androidKt.a((OffsetProvider) obj5, (Alignment) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                AvatarEditorKt.a((User) obj5, (Function1) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                AvatarKt.e((Modifier) obj5, (AvatarTheme.Appearance) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                AvatarKt.a((Modifier) obj5, (AvatarTheme.Appearance) obj4, (Device) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                AvatarKt.f((Modifier) obj5, (AvatarTheme.Appearance) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                BasicTextContextMenuProviderKt.a((Modifier) obj5, (ProvidableCompositionLocal) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj3).l(obj5, obj4, (Composer) obj, RecomposeScopeImplKt.a(i2) | 1);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.b((Modifier) obj5, (ContextMenuColors) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.l);
                return unit;
            case KeyModifiers.a /* 9 */:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.a((ContextMenuColors) obj5, (Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case KeyModifiers.b /* 10 */:
                ((Integer) obj2).intValue();
                DefaultTextContextMenuDropdownProvider_androidKt.c((TextContextMenuSession) obj4, (TextContextMenuDataProvider) obj3, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 11:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(1);
                LazyLayoutItemContentFactoryKt.a((LazyLayoutItemProvider) obj5, this.n, this.l, this.k, (Composer) obj, a);
                return unit;
            case KeyModifiers.c /* 12 */:
                ((Integer) obj2).intValue();
                LifecycleEffectKt.b((LifecycleOwner) obj5, (LifecycleStartStopEffectScope) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 13:
                ((Integer) obj2).getClass();
                SnackbarHostKt.b((SnackbarHostState) obj5, (Modifier) obj4, (Function3) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 14:
                ((Integer) obj2).getClass();
                SubcomposeLayoutKt.b((SubcomposeLayoutState) obj5, (Modifier) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 15:
                ((Integer) obj2).getClass();
                ((TextLinkScope) obj5).b((Object[]) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                ((Integer) obj2).intValue();
                TransferCreationScreenKt.c((TransferChoosePeerViewModel) obj4, (PeerPickerViewModel) obj3, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }

    public /* synthetic */ b1(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, int i) {
        this.j = 7;
        this.k = composableLambdaImpl;
        this.m = obj;
        this.n = obj2;
        this.l = i;
    }

    public /* synthetic */ b1(Modifier modifier, ContextMenuColors contextMenuColors, Function1 function1, int i, int i2) {
        this.j = 8;
        this.m = modifier;
        this.n = contextMenuColors;
        this.k = function1;
        this.l = i2;
    }

    public /* synthetic */ b1(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.j = i2;
        this.m = obj;
        this.n = obj2;
        this.k = obj3;
        this.l = i;
    }

    public /* synthetic */ b1(Object obj, Object obj2, Function0 function0, int i, int i2) {
        this.j = i2;
        this.n = obj;
        this.k = obj2;
        this.m = function0;
        this.l = i;
    }
}
