package androidx.compose.ui.semantics;

import defpackage.cf;
import defpackage.ke;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsProperties {
    public static final SemanticsPropertyKey A;
    public static final SemanticsPropertyKey B;
    public static final SemanticsPropertyKey p;
    public static final SemanticsPropertyKey q;
    public static final SemanticsPropertyKey r;
    public static final SemanticsPropertyKey s;
    public static final SemanticsPropertyKey t;
    public static final SemanticsPropertyKey a = new SemanticsPropertyKey("ContentDescription", true, new ke(28));
    public static final SemanticsPropertyKey b = new SemanticsPropertyKey("StateDescription", 0);
    public static final SemanticsPropertyKey c = new SemanticsPropertyKey("ProgressBarRangeInfo", 0);
    public static final SemanticsPropertyKey d = new SemanticsPropertyKey("PaneTitle", true, new cf(7, 0));
    public static final SemanticsPropertyKey e = new SemanticsPropertyKey("SelectableGroup", 0);
    public static final SemanticsPropertyKey f = new SemanticsPropertyKey("CollectionInfo", 0);
    public static final SemanticsPropertyKey g = new SemanticsPropertyKey("CollectionItemInfo", 0);
    public static final SemanticsPropertyKey h = new SemanticsPropertyKey("Heading", 0);
    public static final SemanticsPropertyKey i = new SemanticsPropertyKey("TextEntryKey", 0);
    public static final SemanticsPropertyKey j = new SemanticsPropertyKey("Disabled", 0);
    public static final SemanticsPropertyKey k = new SemanticsPropertyKey("LiveRegion", 0);
    public static final SemanticsPropertyKey l = new SemanticsPropertyKey("Focused", 0);
    public static final SemanticsPropertyKey m = new SemanticsPropertyKey("IsContainer", 0);
    public static final SemanticsPropertyKey n = new SemanticsPropertyKey("IsTraversalGroup");
    public static final SemanticsPropertyKey o = new SemanticsPropertyKey("IsSensitiveData");
    public static final SemanticsPropertyKey u = new SemanticsPropertyKey("TraversalIndex", new ke(29));
    public static final SemanticsPropertyKey v = new SemanticsPropertyKey("HorizontalScrollAxisRange", 0);
    public static final SemanticsPropertyKey w = new SemanticsPropertyKey("VerticalScrollAxisRange", 0);
    public static final SemanticsPropertyKey x = new SemanticsPropertyKey("IsPopup", true, new cf(0, 0));
    public static final SemanticsPropertyKey y = new SemanticsPropertyKey("IsDialog", true, new cf(1, 0));
    public static final SemanticsPropertyKey z = new SemanticsPropertyKey("Role", true, new cf(2, 0));
    public static final SemanticsPropertyKey C = new SemanticsPropertyKey("Text", true, new cf(5, 0));
    public static final SemanticsPropertyKey D = new SemanticsPropertyKey("TextSubstitution");
    public static final SemanticsPropertyKey E = new SemanticsPropertyKey("IsShowingTextSubstitution");
    public static final SemanticsPropertyKey F = new SemanticsPropertyKey("InputText", 0);
    public static final SemanticsPropertyKey G = new SemanticsPropertyKey("EditableText", 0);
    public static final SemanticsPropertyKey H = new SemanticsPropertyKey("TextSelectionRange", 0);
    public static final SemanticsPropertyKey I = new SemanticsPropertyKey("TextCompositionRange", 0);
    public static final SemanticsPropertyKey J = new SemanticsPropertyKey("ImeAction", 0);
    public static final SemanticsPropertyKey K = new SemanticsPropertyKey("Selected", 0);
    public static final SemanticsPropertyKey L = new SemanticsPropertyKey("ToggleableState", 0);
    public static final SemanticsPropertyKey M = new SemanticsPropertyKey("InputTextSuggestionState", 0);
    public static final SemanticsPropertyKey N = new SemanticsPropertyKey("Password", 0);
    public static final SemanticsPropertyKey O = new SemanticsPropertyKey("Error", 0);
    public static final SemanticsPropertyKey P = new SemanticsPropertyKey("IndexForKey");
    public static final SemanticsPropertyKey Q = new SemanticsPropertyKey("IsEditable");
    public static final SemanticsPropertyKey R = new SemanticsPropertyKey("MaxTextLength");
    public static final SemanticsPropertyKey S = new SemanticsPropertyKey("Shape", false, new cf(6, 0));

    static {
        byte b2 = 0;
        p = new SemanticsPropertyKey("InvisibleToUser", new cf(4, b2));
        q = new SemanticsPropertyKey("HideFromAccessibility", new cf(4, b2));
        r = new SemanticsPropertyKey("ContentType", new cf(8, b2));
        s = new SemanticsPropertyKey("ContentDataType", new cf(9, b2));
        t = new SemanticsPropertyKey("FillableData", new cf(10, b2));
        A = new SemanticsPropertyKey("TestTag", false, new cf(3, b2));
        B = new SemanticsPropertyKey("LinkTestMarker", false, new cf(4, b2));
    }
}
