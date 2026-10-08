package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.internal.TextClassificationHelperApi28;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.IntSize;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.ktor.http.Url;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import net.blip.libblip.event.TransferAcceptanceRequested;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class tg implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ tg(TextLinkScope textLinkScope, AnnotatedString.Range range, UriHandler uriHandler) {
        this.j = 2;
        this.k = range;
        this.l = uriHandler;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i;
        long j;
        TextLayoutResultProxy d;
        LegacyTextFieldState legacyTextFieldState;
        AnnotatedString annotatedString;
        int q;
        int d2;
        int i2 = this.j;
        int i3 = 0;
        Unit unit = Unit.a;
        Object obj = this.l;
        Object obj2 = this.k;
        switch (i2) {
            case 0:
                Context context = (Context) obj2;
                TextClassification textClassification = (TextClassification) obj;
                String text = textClassification.getText();
                if (text != null) {
                    i3 = text.hashCode();
                }
                TextClassificationHelperApi28.a(PendingIntent.getActivity(context, i3, textClassification.getIntent(), 201326592));
                return unit;
            case 1:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj2;
                long j2 = ((IntSize) ((MutableState) obj).getValue()).a;
                Offset j3 = textFieldSelectionManager.j();
                long j4 = 9205357640488583168L;
                if (j3 != null) {
                    long j5 = j3.a;
                    AnnotatedString n = textFieldSelectionManager.n();
                    if (n != null && n.k.length() != 0) {
                        Handle handle = (Handle) ((SnapshotMutableStateImpl) textFieldSelectionManager.q).getValue();
                        if (handle == null) {
                            i = -1;
                        } else {
                            i = TextFieldSelectionManagerKt.WhenMappings.a[handle.ordinal()];
                        }
                        if (i != -1) {
                            if (i != 1 && i != 2) {
                                if (i == 3) {
                                    long j6 = textFieldSelectionManager.o().b;
                                    int i4 = TextRange.c;
                                    j = j6 & 4294967295L;
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else {
                                long j7 = textFieldSelectionManager.o().b;
                                int i5 = TextRange.c;
                                j = j7 >> 32;
                            }
                            int i6 = (int) j;
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                            if (legacyTextFieldState2 != null && (d = legacyTextFieldState2.d()) != null && (legacyTextFieldState = textFieldSelectionManager.d) != null && (annotatedString = legacyTextFieldState.a.a) != null) {
                                int d3 = RangesKt.d(textFieldSelectionManager.b.b(i6), 0, annotatedString.k.length());
                                float intBitsToFloat = Float.intBitsToFloat((int) (d.d(j5) >> 32));
                                TextLayoutResult textLayoutResult = d.a;
                                MultiParagraph multiParagraph = textLayoutResult.b;
                                int d4 = multiParagraph.d(d3);
                                float d5 = textLayoutResult.d(d4);
                                float e = textLayoutResult.e(d4);
                                float c = RangesKt.c(intBitsToFloat, Math.min(d5, e), Math.max(d5, e));
                                if (IntSize.a(j2, 0L) || Math.abs(intBitsToFloat - c) <= ((int) (j2 >> 32)) / 2) {
                                    float f = multiParagraph.f(d4);
                                    j4 = (Float.floatToRawIntBits(c) << 32) | (Float.floatToRawIntBits(((multiParagraph.b(d4) - f) / 2.0f) + f) & 4294967295L);
                                }
                            }
                        }
                    }
                }
                return new Offset(j4);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                UriHandler uriHandler = (UriHandler) obj;
                LinkAnnotation linkAnnotation = (LinkAnnotation) ((AnnotatedString.Range) obj2).a;
                if (linkAnnotation instanceof LinkAnnotation.Url) {
                    try {
                        ((AndroidUriHandler) uriHandler).a(((LinkAnnotation.Url) linkAnnotation).a);
                    } catch (IllegalArgumentException unused) {
                    }
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Function1) obj2).b(new TransferAcceptanceRequested((String) obj, "", ByteString.m));
                return unit;
            default:
                Url url = (Url) obj;
                String str = url.n;
                if (!((ArrayList) obj2).isEmpty() && (q = StringsKt.q(str, '/', url.p.j.length() + 3, 4)) != -1) {
                    d2 = StringsKt__StringsKt.d(str, new char[]{'?', '#'}, q, false);
                    if (d2 == -1) {
                        return str.substring(q);
                    }
                    return str.substring(q, d2);
                }
                return "";
        }
    }

    public /* synthetic */ tg(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }
}
