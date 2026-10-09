package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.accompanist.drawablepainter.DrawablePainter;
import com.google.accompanist.drawablepainter.DrawablePainterKt;
import com.google.accompanist.drawablepainter.EmptyPainter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.filetypes.FileIcon;
import net.blip.android.filetypes.Thumbnail;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.StyledTextFieldKt;
import net.blip.android.ui.home.TransferRemovalDialogKt;
import net.blip.android.ui.settings.ComposableSingletons$SettingsScreenKt;
import net.blip.android.ui.util.KeyboardKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a1 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;

    public /* synthetic */ a1(MutableState mutableState, int i) {
        this.j = i;
        this.k = mutableState;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x02c0  */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n(Object obj, Object obj2) {
        boolean z;
        float min;
        boolean z2;
        boolean z3;
        Object drawablePainter;
        Drawable drawable;
        int i = this.j;
        float f = 1.0f;
        Modifier.Companion companion = Modifier.Companion.b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        boolean z4 = false;
        Unit unit = Unit.a;
        MutableState mutableState = this.k;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    Object K = gapComposer.K();
                    if (K == composer$Companion$Empty$1) {
                        K = new h(8);
                        gapComposer.g0(K);
                    }
                    AndroidDialog_androidKt.b(SemanticsModifierKt.a(companion, false, (Function1) K), (Function2) mutableState.getValue(), gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                IntRect intRect = (IntRect) obj;
                IntRect intRect2 = (IntRect) obj2;
                PopupProperties popupProperties = AndroidMenu_androidKt.a;
                int i2 = intRect2.a;
                int i3 = intRect2.d;
                int i4 = intRect2.c;
                int i5 = intRect2.b;
                int i6 = intRect.c;
                int i7 = intRect.b;
                int i8 = intRect.d;
                int i9 = intRect.a;
                if (i2 < i6) {
                    if (i4 <= i9) {
                        min = 1.0f;
                    } else if (i4 - i2 != 0) {
                        min = (((Math.min(intRect.c, i4) + Math.max(i9, i2)) / 2) - i2) / (i4 - intRect2.a);
                    }
                    if (i5 < i8) {
                        if (i3 > i7) {
                            if (intRect2.a() != 0) {
                                f = (((Math.min(i8, i3) + Math.max(i7, i5)) / 2) - i5) / intRect2.a();
                            }
                        }
                        mutableState.setValue(new TransformOrigin(TransformOriginKt.a(min, f)));
                        return unit;
                    }
                    f = 0.0f;
                    mutableState.setValue(new TransformOrigin(TransformOriginKt.a(min, f)));
                    return unit;
                }
                min = 0.0f;
                if (i5 < i8) {
                }
                f = 0.0f;
                mutableState.setValue(new TransformOrigin(TransformOriginKt.a(min, f)));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    Modifier f2 = PaddingKt.f(companion, 24.0f, 0.0f, 2);
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer2, 0);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, f2);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                    Modifier a2 = KeyboardKt.a(gapComposer2, SizeKt.d(companion, 1.0f));
                    TextFieldValue textFieldValue = (TextFieldValue) mutableState.getValue();
                    Object K2 = gapComposer2.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new i2(mutableState, 10);
                        gapComposer2.g0(K2);
                    }
                    StyledTextFieldKt.a(a2, textFieldValue, (Function1) K2, "Jane Smith", null, null, null, new KeyboardOptions(2, Boolean.TRUE, 1, 7, 112), null, false, 0, 0, gapComposer2, 12586368, 3952);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion, 16.0f));
                    PlatformTextKt.c("People will see your name and avatar in search and when you send them things", null, TextStyle.a(((AndroidTextStyles) gapComposer2.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16744444), 0, false, 0, 0, null, gapComposer2, 6, 506);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z4 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z4)) {
                    boolean f3 = gapComposer3.f(mutableState);
                    Object K3 = gapComposer3.K();
                    if (f3 || K3 == composer$Companion$Empty$1) {
                        K3 = new cd(mutableState, 24);
                        gapComposer3.g0(K3);
                    }
                    ButtonKt.b((Function0) K3, false, null, ComposableSingletons$SettingsScreenKt.l, gapComposer3, 510);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                TransferRemovalDialogKt.b(mutableState, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                TransferRemovalDialogKt.b(mutableState, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                TransferRemovalDialogKt.b(mutableState, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            default:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z3)) {
                    List<FileIcon> list = (List) mutableState.getValue();
                    ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
                    for (FileIcon fileIcon : list) {
                        fileIcon.getClass();
                        Thumbnail thumbnail = fileIcon.b;
                        if (thumbnail instanceof Thumbnail.Some) {
                            drawable = ((Thumbnail.Some) thumbnail).a;
                        } else {
                            drawable = fileIcon.a;
                        }
                        arrayList.add(drawable);
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Drawable drawable2 = (Drawable) it.next();
                        Lazy lazy = DrawablePainterKt.a;
                        gapComposer4.W(1756822313);
                        gapComposer4.W(289266787);
                        boolean f4 = gapComposer4.f(drawable2);
                        Object K4 = gapComposer4.K();
                        if (f4 || K4 == composer$Companion$Empty$1) {
                            if (drawable2 == null) {
                                K4 = EmptyPainter.o;
                            } else {
                                if (drawable2 instanceof ColorDrawable) {
                                    drawablePainter = new ColorPainter(ColorKt.b(((ColorDrawable) drawable2).getColor()));
                                } else {
                                    Drawable mutate = drawable2.mutate();
                                    mutate.getClass();
                                    drawablePainter = new DrawablePainter(mutate);
                                }
                                K4 = drawablePainter;
                            }
                            gapComposer4.g0(K4);
                        }
                        gapComposer4.p(false);
                        gapComposer4.p(false);
                        ImageKt.a((Painter) K4, null, ShadowKt.a(LayoutModifierKt.a(companion, new d6(28)), 10.0f, RoundedCornerShapeKt.b(10.0f), 0L, 28), null, null, 0.0f, null, gapComposer4, 56, 120);
                        arrayList2.add(unit);
                    }
                } else {
                    gapComposer4.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ a1(MutableState mutableState, int i, int i2) {
        this.j = i2;
        this.k = mutableState;
    }
}
