package androidx.compose.ui.node;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TraversableNode$Companion$TraverseDescendantsAction {
    public static final TraversableNode$Companion$TraverseDescendantsAction j;
    public static final TraversableNode$Companion$TraverseDescendantsAction k;
    public static final TraversableNode$Companion$TraverseDescendantsAction l;
    public static final /* synthetic */ TraversableNode$Companion$TraverseDescendantsAction[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction] */
    static {
        ?? r0 = new Enum("ContinueTraversal", 0);
        j = r0;
        ?? r1 = new Enum("SkipSubtreeAndContinueTraversal", 1);
        k = r1;
        ?? r2 = new Enum("CancelTraversal", 2);
        l = r2;
        TraversableNode$Companion$TraverseDescendantsAction[] traversableNode$Companion$TraverseDescendantsActionArr = {r0, r1, r2};
        m = traversableNode$Companion$TraverseDescendantsActionArr;
        EnumEntriesKt.a(traversableNode$Companion$TraverseDescendantsActionArr);
    }

    public static TraversableNode$Companion$TraverseDescendantsAction valueOf(String str) {
        return (TraversableNode$Companion$TraverseDescendantsAction) Enum.valueOf(TraversableNode$Companion$TraverseDescendantsAction.class, str);
    }

    public static TraversableNode$Companion$TraverseDescendantsAction[] values() {
        return (TraversableNode$Companion$TraverseDescendantsAction[]) m.clone();
    }
}
