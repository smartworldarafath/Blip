package kotlin.text;

import java.util.Iterator;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 implements Sequence<String> {
    public final /* synthetic */ CharSequence a;

    public StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(CharSequence charSequence) {
        this.a = charSequence;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new LinesIterator(this.a);
    }
}
