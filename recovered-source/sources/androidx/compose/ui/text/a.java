package androidx.compose.ui.text;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceResult;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function4 {
    public final /* synthetic */ AndroidParagraphIntrinsics j;

    public /* synthetic */ a(AndroidParagraphIntrinsics androidParagraphIntrinsics) {
        this.j = androidParagraphIntrinsics;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.j;
        TypefaceResult b = ((FontFamilyResolverImpl) androidParagraphIntrinsics.e).b((FontFamily) obj, (FontWeight) obj2, ((FontStyle) obj3).a, ((FontSynthesis) obj4).a);
        if (!(b instanceof TypefaceResult.Immutable)) {
            TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = new TypefaceDirtyTrackerLinkedList(b, androidParagraphIntrinsics.j);
            androidParagraphIntrinsics.j = typefaceDirtyTrackerLinkedList;
            Object obj5 = typefaceDirtyTrackerLinkedList.c;
            obj5.getClass();
            return (Typeface) obj5;
        }
        Object obj6 = ((TypefaceResult.Immutable) b).j;
        obj6.getClass();
        return (Typeface) obj6;
    }
}
