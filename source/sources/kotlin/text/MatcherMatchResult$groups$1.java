package kotlin.text;

import defpackage.ma;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Matcher;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.TransformingSequence;
import kotlin.sequences.TransformingSequence$iterator$1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MatcherMatchResult$groups$1 extends AbstractCollection<MatchGroup> implements Collection, KMappedMarker {
    public final /* synthetic */ MatcherMatchResult j;

    public MatcherMatchResult$groups$1(MatcherMatchResult matcherMatchResult) {
        this.j = matcherMatchResult;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.j.a.groupCount() + 1;
    }

    public final MatchGroup c(int i) {
        Matcher matcher = this.j.a;
        IntRange j = RangesKt.j(matcher.start(i), matcher.end(i));
        if (j.j >= 0) {
            String group = matcher.group(i);
            group.getClass();
            return new MatchGroup(group, j);
        }
        return null;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof MatchGroup;
        }
        if (!z) {
            return false;
        }
        return super.contains((MatchGroup) obj);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new TransformingSequence$iterator$1(new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(new IntProgression(0, b() - 1, 1)), new ma(1, this)));
    }
}
