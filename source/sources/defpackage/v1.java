package defpackage;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.PriorityTask;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsSortKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.extractor.text.webvtt.WebvttCueInfo;
import com.google.common.collect.Ordering;
import io.sentry.android.core.anr.AggregatedStackTrace;
import io.sentry.android.core.anr.AnrCulpritIdentifier;
import java.util.ArrayList;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v1 implements Comparator {
    public final /* synthetic */ int j;

    public /* synthetic */ v1(int i) {
        this.j = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.j) {
            case 0:
                return Intrinsics.b(((PriorityTask) obj2).a, ((PriorityTask) obj).a);
            case 1:
                return Integer.bitCount(((Integer) obj2).intValue()) - Integer.bitCount(((Integer) obj).intValue());
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return Integer.compare(((Format) obj2).k, ((Format) obj).k);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                Ordering ordering = DefaultTrackSelector.k;
                if (num.intValue() == -1) {
                    if (num2.intValue() != -1) {
                        return -1;
                    }
                    return 0;
                }
                if (num2.intValue() == -1) {
                    return 1;
                }
                return num.intValue() - num2.intValue();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                IntRange intRange = (IntRange) obj;
                IntRange intRange2 = (IntRange) obj2;
                return (intRange.k - intRange.j) - (intRange2.k - intRange2.j);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                LayoutNode layoutNode = (LayoutNode) obj;
                LayoutNode layoutNode2 = (LayoutNode) obj2;
                float f = layoutNode.P.p.O;
                float f2 = layoutNode2.P.p.O;
                if (f == f2) {
                    return Intrinsics.b(layoutNode.x(), layoutNode2.x());
                }
                return Float.compare(f, f2);
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return Intrinsics.b(((LazyLayoutMeasuredItem) obj).getIndex(), ((LazyLayoutMeasuredItem) obj2).getIndex());
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((Number) SemanticsSortKt.b.n(obj, obj2)).intValue();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Long.compare(((WebvttCueInfo) obj).b, ((WebvttCueInfo) obj2).b);
            default:
                AggregatedStackTrace aggregatedStackTrace = (AggregatedStackTrace) obj;
                AggregatedStackTrace aggregatedStackTrace2 = (AggregatedStackTrace) obj2;
                ArrayList arrayList = AnrCulpritIdentifier.a;
                return Float.compare((aggregatedStackTrace.b + 1.0f) * aggregatedStackTrace.f * aggregatedStackTrace.a, (aggregatedStackTrace2.b + 1.0f) * aggregatedStackTrace2.f * aggregatedStackTrace2.a);
        }
    }
}
