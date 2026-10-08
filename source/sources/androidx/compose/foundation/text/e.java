package androidx.compose.foundation.text;

import androidx.compose.ui.text.font.TypefaceResult;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ HeightInLinesNode k;

    public /* synthetic */ e(HeightInLinesNode heightInLinesNode, int i) {
        this.j = i;
        this.k = heightInLinesNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        HeightInLinesNode heightInLinesNode = this.k;
        switch (i) {
            case 0:
                TypefaceResult typefaceResult = heightInLinesNode.E;
                if (typefaceResult != null) {
                    typefaceResult.getValue();
                    return unit;
                }
                throw q.C("Font resolution state is not set.");
            default:
                TypefaceResult typefaceResult2 = heightInLinesNode.E;
                if (typefaceResult2 != null) {
                    typefaceResult2.getValue();
                    return unit;
                }
                throw q.C("Font resolution state is not set.");
        }
    }
}
