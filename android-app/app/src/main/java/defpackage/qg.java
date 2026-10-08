package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.foundation.lazy.grid.LazyGridSpanKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.TextFieldDelegateKt;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.emoji2.text.EmojiCompat;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class qg implements Function1 {
    public final /* synthetic */ int j;

    public /* synthetic */ qg(int i) {
        this.j = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:138:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        int i;
        Orientation orientation;
        TextLinkStyles a;
        SpanStyle spanStyle;
        int ordinal;
        int i2 = this.j;
        boolean z = true;
        Unit unit = Unit.a;
        switch (i2) {
            case 0:
                ((Float) obj).getClass();
                return unit;
            case 1:
                ((Integer) obj).intValue();
                return TextFieldDelegateKt.a;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj;
                String str = textFieldPreparedSelection.g.k;
                long j = textFieldPreparedSelection.f;
                int i3 = TextRange.c;
                int i4 = (int) (j & 4294967295L);
                if (i4 > 0) {
                    EmojiCompat c = StringHelpers_androidKt.c();
                    if (c == null) {
                        if (i4 > 0) {
                            i = Character.offsetByCodePoints(str, i4, -1);
                            if (i == -1) {
                                return null;
                            }
                            return new DeleteSurroundingTextCommand(((int) (textFieldPreparedSelection.f & 4294967295L)) - i, 0);
                        }
                    } else {
                        int c2 = c.c(str, i4 - 1);
                        if (c2 < 0) {
                            if (i4 > 0) {
                                i = Character.offsetByCodePoints(str, i4, -1);
                            }
                        } else {
                            i = c2;
                        }
                        if (i == -1) {
                        }
                    }
                }
                i = -1;
                if (i == -1) {
                }
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                TextFieldPreparedSelection textFieldPreparedSelection2 = (TextFieldPreparedSelection) obj;
                String str2 = textFieldPreparedSelection2.g.k;
                long j2 = textFieldPreparedSelection2.f;
                int i5 = TextRange.c;
                int a2 = StringHelpers_androidKt.a((int) (j2 & 4294967295L), str2);
                if (a2 == -1) {
                    return null;
                }
                return new DeleteSurroundingTextCommand(0, a2 - ((int) (textFieldPreparedSelection2.f & 4294967295L)));
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                TextFieldPreparedSelection textFieldPreparedSelection3 = (TextFieldPreparedSelection) obj;
                Integer d = textFieldPreparedSelection3.d();
                if (d == null) {
                    return null;
                }
                int intValue = d.intValue();
                long j3 = textFieldPreparedSelection3.f;
                int i6 = TextRange.c;
                return new DeleteSurroundingTextCommand(((int) (j3 & 4294967295L)) - intValue, 0);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                TextFieldPreparedSelection textFieldPreparedSelection4 = (TextFieldPreparedSelection) obj;
                Integer c3 = textFieldPreparedSelection4.c();
                if (c3 == null) {
                    return null;
                }
                int intValue2 = c3.intValue();
                long j4 = textFieldPreparedSelection4.f;
                int i7 = TextRange.c;
                return new DeleteSurroundingTextCommand(0, intValue2 - ((int) (j4 & 4294967295L)));
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                TextFieldPreparedSelection textFieldPreparedSelection5 = (TextFieldPreparedSelection) obj;
                Integer b = textFieldPreparedSelection5.b();
                if (b == null) {
                    return null;
                }
                int intValue3 = b.intValue();
                long j5 = textFieldPreparedSelection5.f;
                int i8 = TextRange.c;
                return new DeleteSurroundingTextCommand(((int) (j5 & 4294967295L)) - intValue3, 0);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                TextFieldPreparedSelection textFieldPreparedSelection6 = (TextFieldPreparedSelection) obj;
                Integer a3 = textFieldPreparedSelection6.a();
                if (a3 == null) {
                    return null;
                }
                int intValue4 = a3.intValue();
                long j6 = textFieldPreparedSelection6.f;
                int i9 = TextRange.c;
                return new DeleteSurroundingTextCommand(0, intValue4 - ((int) (j6 & 4294967295L)));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                List list = (List) obj;
                Object obj2 = list.get(1);
                obj2.getClass();
                if (((Boolean) obj2).booleanValue()) {
                    orientation = Orientation.j;
                } else {
                    orientation = Orientation.k;
                }
                Object obj3 = list.get(0);
                obj3.getClass();
                return new TextFieldScrollerPosition(orientation, ((Float) obj3).floatValue());
            case KeyModifiers.a /* 9 */:
                AnnotatedString.Range range = (AnnotatedString.Range) obj;
                Object obj4 = range.a;
                if ((obj4 instanceof LinkAnnotation) && (a = ((LinkAnnotation) obj4).a()) != null && (a.a != null || a.b != null || a.c != null || a.d != null)) {
                    Object obj5 = range.a;
                    obj5.getClass();
                    TextLinkStyles a4 = ((LinkAnnotation) obj5).a();
                    if (a4 == null || (spanStyle = a4.a) == null) {
                        spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65535);
                    }
                    return CollectionsKt.h(range, new AnnotatedString.Range(range.b, range.c, spanStyle));
                }
                return CollectionsKt.h(range);
            case KeyModifiers.b /* 10 */:
                ((SemanticsPropertyReceiver) obj).b(SemanticsProperties.B, unit);
                return unit;
            case 11:
                SQLiteStatement sQLiteStatement = (SQLiteStatement) obj;
                sQLiteStatement.getClass();
                return Boolean.valueOf(sQLiteStatement.V0());
            case KeyModifiers.c /* 12 */:
                Transfer transfer = (Transfer) obj;
                if (transfer == null || transfer.o != 0 || ((ordinal = transfer.w.ordinal()) != 1 && ordinal != 2)) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 13:
                LazyGridItemSpanScope lazyGridItemSpanScope = (LazyGridItemSpanScope) obj;
                lazyGridItemSpanScope.getClass();
                return new GridItemSpan(LazyGridSpanKt.a(lazyGridItemSpanScope.a()));
            case 14:
                LazyGridItemSpanScope lazyGridItemSpanScope2 = (LazyGridItemSpanScope) obj;
                lazyGridItemSpanScope2.getClass();
                return new GridItemSpan(LazyGridSpanKt.a(lazyGridItemSpanScope2.a()));
            case 15:
                Transfer transfer2 = (Transfer) obj;
                transfer2.getClass();
                return transfer2.m;
            case 16:
                ((AnimatedContentTransitionScope) obj).getClass();
                return AnimatedContentKt.d(EnterExitTransitionKt.c(null, 3), EnterExitTransitionKt.d(null, 3));
            case 17:
                List list2 = (List) obj;
                list2.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt.m(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Transfer) it.next()).m);
                }
                return arrayList;
            case 18:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) obj;
                long j7 = seekableTransitionState.f;
                SnapshotStateObserver snapshotStateObserver = seekableTransitionState.h;
                if (snapshotStateObserver != null) {
                    snapshotStateObserver.e(seekableTransitionState, TransitionKt.a, seekableTransitionState.g);
                }
                long j8 = seekableTransitionState.f;
                if (j7 != j8) {
                    SeekableTransitionState.SeekingAnimationState seekingAnimationState = seekableTransitionState.o;
                    if (seekingAnimationState != null) {
                        if (seekingAnimationState.a > j8) {
                            seekableTransitionState.l();
                        } else {
                            seekingAnimationState.g = j8;
                            if (seekingAnimationState.b == null) {
                                seekingAnimationState.h = MathKt.c((1.0d - seekingAnimationState.e.a(0)) * seekableTransitionState.f);
                            }
                        }
                    } else if (j8 != 0) {
                        seekableTransitionState.p();
                    }
                }
                return unit;
            case 19:
                SQLiteStatement sQLiteStatement2 = (SQLiteStatement) obj;
                sQLiteStatement2.getClass();
                SetBuilder setBuilder = new SetBuilder();
                while (sQLiteStatement2.V0()) {
                    setBuilder.add(Integer.valueOf((int) sQLiteStatement2.getLong(0)));
                }
                return SetsKt.a(setBuilder);
            case 20:
                Pair pair = (Pair) obj;
                pair.getClass();
                String str3 = (String) pair.j;
                Object obj6 = pair.k;
                if (obj6 != null) {
                    return str3 + '=' + String.valueOf(obj6);
                }
                return str3;
            case 21:
                return new AnimationVector1D(((Float) obj).floatValue());
            case 22:
                return new AnimationVector1D(((Integer) obj).intValue());
            case 23:
                return Integer.valueOf((int) ((AnimationVector1D) obj).a);
            case 24:
                return new AnimationVector1D(((Dp) obj).j);
            case 25:
                return new Dp(((AnimationVector1D) obj).a);
            case 26:
                DpOffset dpOffset = (DpOffset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (dpOffset.a >> 32)), Float.intBitsToFloat((int) (dpOffset.a & 4294967295L)));
            case 27:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                return new DpOffset((Float.floatToRawIntBits(animationVector2D.a) << 32) | (Float.floatToRawIntBits(animationVector2D.b) & 4294967295L));
            case 28:
                Size size = (Size) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (size.a >> 32)), Float.intBitsToFloat((int) (size.a & 4294967295L)));
            default:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                return new Size((Float.floatToRawIntBits(animationVector2D2.a) << 32) | (Float.floatToRawIntBits(animationVector2D2.b) & 4294967295L));
        }
    }
}
