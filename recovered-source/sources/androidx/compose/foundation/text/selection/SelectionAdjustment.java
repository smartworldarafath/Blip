package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.Selection;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SelectionAdjustment {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.selection.a] */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.text.selection.a] */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.text.selection.a] */
        /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.foundation.text.selection.a] */
        static {
            final int i = 0;
            a = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
                
                    if (r11.b == r5.b) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
                
                    r12 = (androidx.compose.foundation.text.selection.SingleSelectionLayout) r12;
                    r3 = r12.c;
                    r4 = r3.d.a.a.k;
                    r6 = r12.b;
                    r12 = r12.a;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
                
                    if (r6 == null) goto L68;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:29:0x00a7, code lost:
                
                    if (r4.length() != 0) goto L46;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:30:0x00ab, code lost:
                
                    r4 = r3.d.a.a.k;
                    r7 = r3.a;
                    r8 = r4.length();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
                
                    if (r7 != 0) goto L53;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(0, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
                
                    if (r12 == false) goto L52;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:34:0x00c3, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, true, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
                
                    return r11;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), false, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x00d6, code lost:
                
                    if (r7 != r8) goto L58;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00d8, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r8, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
                
                    if (r12 == false) goto L57;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, false, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:42:0x00e7, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), true, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
                
                    if (r6.c != true) goto L61;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x00f4, code lost:
                
                    r2 = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
                
                    if ((r12 ^ r2) == false) goto L64;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x00f9, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x0102, code lost:
                
                    if (r12 == false) goto L67;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x0104, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, r2, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:51:0x010d, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), r2, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:52:0x00fe, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x008d, code lost:
                
                    if (((androidx.compose.foundation.text.selection.SingleSelectionLayout) r12).c.d.a.a.k.length() != r3.b) goto L68;
                 */
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo b2;
                    Selection.AnchorInfo anchorInfo;
                    boolean z;
                    Selection.AnchorInfo anchorInfo2;
                    Selection.AnchorInfo anchorInfo3;
                    int i2 = i;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.a;
                    boolean z2 = true;
                    boolean z3 = false;
                    switch (i2) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.c;
                            Selection.AnchorInfo a2 = selectableInfo.a(selectableInfo.a);
                            Selection.AnchorInfo a3 = selectableInfo.a(selectableInfo.b);
                            if (singleSelectionLayout.a() != CrossStatus.j) {
                                z2 = false;
                            }
                            return new Selection(a2, a3, z2);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.b;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo4 = selection.b;
                            Selection.AnchorInfo anchorInfo5 = selection.a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.c;
                            if (singleSelectionLayout2.a) {
                                anchorInfo = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo5);
                                b2 = anchorInfo4;
                                anchorInfo4 = anchorInfo5;
                                anchorInfo5 = anchorInfo;
                            } else {
                                b2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo4);
                                anchorInfo = b2;
                            }
                            if (!Intrinsics.a(anchorInfo, anchorInfo4)) {
                                if (singleSelectionLayout2.a() != CrossStatus.j && (singleSelectionLayout2.a() != CrossStatus.l || anchorInfo5.b <= b2.b)) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                Selection selection2 = new Selection(anchorInfo5, b2, z);
                                Selection.AnchorInfo anchorInfo6 = selection2.a;
                                long j = anchorInfo6.c;
                                Selection.AnchorInfo anchorInfo7 = selection2.b;
                                if (j != anchorInfo7.c) {
                                    boolean z4 = selection2.c;
                                    if (z4) {
                                        anchorInfo2 = anchorInfo6;
                                    } else {
                                        anchorInfo2 = anchorInfo7;
                                    }
                                    if (anchorInfo2.b == 0) {
                                        if (z4) {
                                            anchorInfo3 = anchorInfo7;
                                        } else {
                                            anchorInfo3 = anchorInfo6;
                                        }
                                        break;
                                    }
                                } else {
                                    break;
                                }
                                return selection2;
                            }
                            return selection;
                    }
                }
            };
            final int i2 = 1;
            b = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
                
                    if (r11.b == r5.b) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
                
                    r12 = (androidx.compose.foundation.text.selection.SingleSelectionLayout) r12;
                    r3 = r12.c;
                    r4 = r3.d.a.a.k;
                    r6 = r12.b;
                    r12 = r12.a;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
                
                    if (r6 == null) goto L68;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:29:0x00a7, code lost:
                
                    if (r4.length() != 0) goto L46;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:30:0x00ab, code lost:
                
                    r4 = r3.d.a.a.k;
                    r7 = r3.a;
                    r8 = r4.length();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
                
                    if (r7 != 0) goto L53;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(0, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
                
                    if (r12 == false) goto L52;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:34:0x00c3, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, true, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
                
                    return r11;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), false, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x00d6, code lost:
                
                    if (r7 != r8) goto L58;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00d8, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r8, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
                
                    if (r12 == false) goto L57;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, false, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:42:0x00e7, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), true, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
                
                    if (r6.c != true) goto L61;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x00f4, code lost:
                
                    r2 = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
                
                    if ((r12 ^ r2) == false) goto L64;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x00f9, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x0102, code lost:
                
                    if (r12 == false) goto L67;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x0104, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, r2, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:51:0x010d, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), r2, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:52:0x00fe, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x008d, code lost:
                
                    if (((androidx.compose.foundation.text.selection.SingleSelectionLayout) r12).c.d.a.a.k.length() != r3.b) goto L68;
                 */
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo b2;
                    Selection.AnchorInfo anchorInfo;
                    boolean z;
                    Selection.AnchorInfo anchorInfo2;
                    Selection.AnchorInfo anchorInfo3;
                    int i22 = i2;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.a;
                    boolean z2 = true;
                    boolean z3 = false;
                    switch (i22) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.c;
                            Selection.AnchorInfo a2 = selectableInfo.a(selectableInfo.a);
                            Selection.AnchorInfo a3 = selectableInfo.a(selectableInfo.b);
                            if (singleSelectionLayout.a() != CrossStatus.j) {
                                z2 = false;
                            }
                            return new Selection(a2, a3, z2);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.b;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo4 = selection.b;
                            Selection.AnchorInfo anchorInfo5 = selection.a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.c;
                            if (singleSelectionLayout2.a) {
                                anchorInfo = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo5);
                                b2 = anchorInfo4;
                                anchorInfo4 = anchorInfo5;
                                anchorInfo5 = anchorInfo;
                            } else {
                                b2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo4);
                                anchorInfo = b2;
                            }
                            if (!Intrinsics.a(anchorInfo, anchorInfo4)) {
                                if (singleSelectionLayout2.a() != CrossStatus.j && (singleSelectionLayout2.a() != CrossStatus.l || anchorInfo5.b <= b2.b)) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                Selection selection2 = new Selection(anchorInfo5, b2, z);
                                Selection.AnchorInfo anchorInfo6 = selection2.a;
                                long j = anchorInfo6.c;
                                Selection.AnchorInfo anchorInfo7 = selection2.b;
                                if (j != anchorInfo7.c) {
                                    boolean z4 = selection2.c;
                                    if (z4) {
                                        anchorInfo2 = anchorInfo6;
                                    } else {
                                        anchorInfo2 = anchorInfo7;
                                    }
                                    if (anchorInfo2.b == 0) {
                                        if (z4) {
                                            anchorInfo3 = anchorInfo7;
                                        } else {
                                            anchorInfo3 = anchorInfo6;
                                        }
                                        break;
                                    }
                                } else {
                                    break;
                                }
                                return selection2;
                            }
                            return selection;
                    }
                }
            };
            final int i3 = 2;
            c = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
                
                    if (r11.b == r5.b) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
                
                    r12 = (androidx.compose.foundation.text.selection.SingleSelectionLayout) r12;
                    r3 = r12.c;
                    r4 = r3.d.a.a.k;
                    r6 = r12.b;
                    r12 = r12.a;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
                
                    if (r6 == null) goto L68;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:29:0x00a7, code lost:
                
                    if (r4.length() != 0) goto L46;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:30:0x00ab, code lost:
                
                    r4 = r3.d.a.a.k;
                    r7 = r3.a;
                    r8 = r4.length();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
                
                    if (r7 != 0) goto L53;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(0, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
                
                    if (r12 == false) goto L52;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:34:0x00c3, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, true, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
                
                    return r11;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), false, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x00d6, code lost:
                
                    if (r7 != r8) goto L58;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00d8, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r8, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
                
                    if (r12 == false) goto L57;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, false, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:42:0x00e7, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), true, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
                
                    if (r6.c != true) goto L61;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x00f4, code lost:
                
                    r2 = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
                
                    if ((r12 ^ r2) == false) goto L64;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x00f9, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x0102, code lost:
                
                    if (r12 == false) goto L67;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x0104, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, r2, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:51:0x010d, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), r2, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:52:0x00fe, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x008d, code lost:
                
                    if (((androidx.compose.foundation.text.selection.SingleSelectionLayout) r12).c.d.a.a.k.length() != r3.b) goto L68;
                 */
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo b2;
                    Selection.AnchorInfo anchorInfo;
                    boolean z;
                    Selection.AnchorInfo anchorInfo2;
                    Selection.AnchorInfo anchorInfo3;
                    int i22 = i3;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.a;
                    boolean z2 = true;
                    boolean z3 = false;
                    switch (i22) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.c;
                            Selection.AnchorInfo a2 = selectableInfo.a(selectableInfo.a);
                            Selection.AnchorInfo a3 = selectableInfo.a(selectableInfo.b);
                            if (singleSelectionLayout.a() != CrossStatus.j) {
                                z2 = false;
                            }
                            return new Selection(a2, a3, z2);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.b;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo4 = selection.b;
                            Selection.AnchorInfo anchorInfo5 = selection.a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.c;
                            if (singleSelectionLayout2.a) {
                                anchorInfo = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo5);
                                b2 = anchorInfo4;
                                anchorInfo4 = anchorInfo5;
                                anchorInfo5 = anchorInfo;
                            } else {
                                b2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo4);
                                anchorInfo = b2;
                            }
                            if (!Intrinsics.a(anchorInfo, anchorInfo4)) {
                                if (singleSelectionLayout2.a() != CrossStatus.j && (singleSelectionLayout2.a() != CrossStatus.l || anchorInfo5.b <= b2.b)) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                Selection selection2 = new Selection(anchorInfo5, b2, z);
                                Selection.AnchorInfo anchorInfo6 = selection2.a;
                                long j = anchorInfo6.c;
                                Selection.AnchorInfo anchorInfo7 = selection2.b;
                                if (j != anchorInfo7.c) {
                                    boolean z4 = selection2.c;
                                    if (z4) {
                                        anchorInfo2 = anchorInfo6;
                                    } else {
                                        anchorInfo2 = anchorInfo7;
                                    }
                                    if (anchorInfo2.b == 0) {
                                        if (z4) {
                                            anchorInfo3 = anchorInfo7;
                                        } else {
                                            anchorInfo3 = anchorInfo6;
                                        }
                                        break;
                                    }
                                } else {
                                    break;
                                }
                                return selection2;
                            }
                            return selection;
                    }
                }
            };
            final int i4 = 3;
            d = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
                
                    if (r11.b == r5.b) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
                
                    r12 = (androidx.compose.foundation.text.selection.SingleSelectionLayout) r12;
                    r3 = r12.c;
                    r4 = r3.d.a.a.k;
                    r6 = r12.b;
                    r12 = r12.a;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
                
                    if (r6 == null) goto L68;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:29:0x00a7, code lost:
                
                    if (r4.length() != 0) goto L46;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:30:0x00ab, code lost:
                
                    r4 = r3.d.a.a.k;
                    r7 = r3.a;
                    r8 = r4.length();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
                
                    if (r7 != 0) goto L53;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(0, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
                
                    if (r12 == false) goto L52;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:34:0x00c3, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, true, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
                
                    return r11;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), false, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x00d6, code lost:
                
                    if (r7 != r8) goto L58;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00d8, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r8, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
                
                    if (r12 == false) goto L57;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, false, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:42:0x00e7, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), true, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
                
                    if (r6.c != true) goto L61;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x00f4, code lost:
                
                    r2 = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
                
                    if ((r12 ^ r2) == false) goto L64;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x00f9, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.b(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x0102, code lost:
                
                    if (r12 == false) goto L67;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x0104, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r11, r3, r4), null, r2, 2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:51:0x010d, code lost:
                
                    r11 = androidx.compose.foundation.text.selection.Selection.a(r0, null, androidx.compose.foundation.text.selection.SelectionAdjustmentKt.d(r5, r3, r4), r2, 1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:52:0x00fe, code lost:
                
                    r4 = androidx.compose.foundation.text.StringHelpers_androidKt.a(r7, r4);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x008d, code lost:
                
                    if (((androidx.compose.foundation.text.selection.SingleSelectionLayout) r12).c.d.a.a.k.length() != r3.b) goto L68;
                 */
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo b2;
                    Selection.AnchorInfo anchorInfo;
                    boolean z;
                    Selection.AnchorInfo anchorInfo2;
                    Selection.AnchorInfo anchorInfo3;
                    int i22 = i4;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.a;
                    boolean z2 = true;
                    boolean z3 = false;
                    switch (i22) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.c;
                            Selection.AnchorInfo a2 = selectableInfo.a(selectableInfo.a);
                            Selection.AnchorInfo a3 = selectableInfo.a(selectableInfo.b);
                            if (singleSelectionLayout.a() != CrossStatus.j) {
                                z2 = false;
                            }
                            return new Selection(a2, a3, z2);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.b;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo4 = selection.b;
                            Selection.AnchorInfo anchorInfo5 = selection.a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.c;
                            if (singleSelectionLayout2.a) {
                                anchorInfo = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo5);
                                b2 = anchorInfo4;
                                anchorInfo4 = anchorInfo5;
                                anchorInfo5 = anchorInfo;
                            } else {
                                b2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo4);
                                anchorInfo = b2;
                            }
                            if (!Intrinsics.a(anchorInfo, anchorInfo4)) {
                                if (singleSelectionLayout2.a() != CrossStatus.j && (singleSelectionLayout2.a() != CrossStatus.l || anchorInfo5.b <= b2.b)) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                Selection selection2 = new Selection(anchorInfo5, b2, z);
                                Selection.AnchorInfo anchorInfo6 = selection2.a;
                                long j = anchorInfo6.c;
                                Selection.AnchorInfo anchorInfo7 = selection2.b;
                                if (j != anchorInfo7.c) {
                                    boolean z4 = selection2.c;
                                    if (z4) {
                                        anchorInfo2 = anchorInfo6;
                                    } else {
                                        anchorInfo2 = anchorInfo7;
                                    }
                                    if (anchorInfo2.b == 0) {
                                        if (z4) {
                                            anchorInfo3 = anchorInfo7;
                                        } else {
                                            anchorInfo3 = anchorInfo6;
                                        }
                                        break;
                                    }
                                } else {
                                    break;
                                }
                                return selection2;
                            }
                            return selection;
                    }
                }
            };
        }
    }

    Selection a(SelectionLayout selectionLayout);
}
