package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NodeChain {
    public final LayoutNode a;
    public final NodeChain$sentinelHead$1 b;
    public final InnerNodeCoordinator c;
    public NodeCoordinator d;
    public final TailModifierNode e;
    public Modifier.Node f;
    public MutableObjectList g;
    public MutableObjectList h;
    public MutableObjectList i;
    public Differ j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Differ {
        public Modifier.Node a;
        public int b;
        public MutableObjectList c;
        public MutableObjectList d;
        public boolean e;

        public Differ(Modifier.Node node, int i, MutableObjectList mutableObjectList, MutableObjectList mutableObjectList2, boolean z) {
            this.a = node;
            this.b = i;
            this.c = mutableObjectList;
            this.d = mutableObjectList2;
            this.e = z;
        }

        public final boolean a(int i, int i2) {
            Modifier.Element element = (Modifier.Element) this.c.b(this.b + i);
            Modifier.Element element2 = (Modifier.Element) this.d.b(this.b + i2);
            if (Intrinsics.a(element, element2) || element.getClass() == element2.getClass()) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.node.NodeChain$sentinelHead$1, androidx.compose.ui.Modifier$Node] */
    public NodeChain(LayoutNode layoutNode) {
        this.a = layoutNode;
        ?? node = new Modifier.Node();
        node.m = -1;
        this.b = node;
        InnerNodeCoordinator innerNodeCoordinator = new InnerNodeCoordinator(layoutNode);
        this.c = innerNodeCoordinator;
        this.d = innerNodeCoordinator;
        TailModifierNode tailModifierNode = innerNodeCoordinator.l0;
        this.e = tailModifierNode;
        this.f = tailModifierNode;
        this.g = new MutableObjectList();
    }

    public static final void a(NodeChain nodeChain, Modifier.Node node, NodeCoordinator nodeCoordinator) {
        InnerNodeCoordinator innerNodeCoordinator;
        for (Modifier.Node node2 = node.n; node2 != null; node2 = node2.n) {
            if (node2 == nodeChain.b) {
                LayoutNode w = nodeChain.a.w();
                if (w != null) {
                    innerNodeCoordinator = w.O.c;
                } else {
                    innerNodeCoordinator = null;
                }
                nodeCoordinator.F = innerNodeCoordinator;
                nodeChain.d = nodeCoordinator;
                return;
            }
            if ((node2.l & 2) == 0) {
                node2.X0(nodeCoordinator);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.BackwardsCompatNode, androidx.compose.ui.Modifier$Node] */
    public static Modifier.Node b(Modifier.Element element, Modifier.Node node) {
        Modifier.Node node2;
        if (element instanceof ModifierNodeElement) {
            node2 = ((ModifierNodeElement) element).g();
            node2.l = NodeKindKt.f(node2);
        } else {
            ?? node3 = new Modifier.Node();
            node3.l = NodeKindKt.d(element);
            node3.x = element;
            node3.z = new HashSet();
            node2 = node3;
        }
        if (node2.w) {
            InlineClassHelperKt.b("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        node2.r = true;
        Modifier.Node node4 = node.o;
        if (node4 != null) {
            node4.n = node2;
            node2.o = node4;
        }
        node.o = node2;
        node2.n = node;
        return node2;
    }

    public static Modifier.Node c(Modifier.Node node) {
        boolean z = node.w;
        if (z) {
            MutableObjectIntMap mutableObjectIntMap = NodeKindKt.a;
            if (!z) {
                InlineClassHelperKt.b("autoInvalidateRemovedNode called on unattached node");
            }
            NodeKindKt.a(node, -1, 2);
            node.V0();
            node.P0();
        }
        Modifier.Node node2 = node.o;
        Modifier.Node node3 = node.n;
        if (node2 != null) {
            node2.n = node3;
            node.o = null;
        }
        if (node3 != null) {
            node3.o = node2;
            node.n = null;
        }
        node3.getClass();
        return node3;
    }

    public static void h(Modifier.Element element, Modifier.Element element2, Modifier.Node node) {
        if ((element instanceof ModifierNodeElement) && (element2 instanceof ModifierNodeElement)) {
            node.getClass();
            ((ModifierNodeElement) element2).i(node);
            if (node.w) {
                NodeKindKt.c(node);
                return;
            } else {
                node.s = true;
                return;
            }
        }
        if (node instanceof BackwardsCompatNode) {
            BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) node;
            if (backwardsCompatNode.w) {
                backwardsCompatNode.Z0();
            }
            backwardsCompatNode.x = element2;
            backwardsCompatNode.l = NodeKindKt.d(element2);
            if (backwardsCompatNode.w) {
                backwardsCompatNode.Y0(false);
            }
            if (node.w) {
                NodeKindKt.c(node);
                return;
            } else {
                node.s = true;
                return;
            }
        }
        InlineClassHelperKt.b("Unknown Modifier.Node type");
    }

    public final boolean d(int i) {
        if ((this.f.m & i) != 0) {
            return true;
        }
        return false;
    }

    public final void e() {
        for (Modifier.Node node = this.f; node != null; node = node.o) {
            node.U0();
            if (node.r) {
                MutableObjectIntMap mutableObjectIntMap = NodeKindKt.a;
                if (!node.w) {
                    InlineClassHelperKt.b("autoInvalidateInsertedNode called on unattached node");
                }
                NodeKindKt.a(node, -1, 1);
            }
            if (node.s) {
                NodeKindKt.c(node);
            }
            node.r = false;
            node.s = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0192, code lost:
    
        r27 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0197, code lost:
    
        r25 = r22 + (r25 & r27);
        r22 = r11;
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01a1, code lost:
    
        if (r14 <= r7) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01a3, code lost:
    
        if (r11 <= r15) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a5, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01b1, code lost:
    
        if (r0.a(r14 - 1, r27 - 1) == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b3, code lost:
    
        r14 = r14 - 1;
        r11 = r27 - 1;
        r13 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01be, code lost:
    
        r20[r17 + r28] = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c2, code lost:
    
        if (r24 == 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01c4, code lost:
    
        r11 = r19 - r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c6, code lost:
    
        if (r11 < r12) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01c8, code lost:
    
        if (r11 > r3) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01ce, code lost:
    
        if (r16[r17 + r11] < r14) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01d0, code lost:
    
        r26[r33] = r14;
        r11 = 1;
        r26[1] = r27;
        r26[r32] = r22;
        r26[3] = r25;
        r26[4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0265, code lost:
    
        r13 = r28 + 2;
        r11 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01ba, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0195, code lost:
    
        r27 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x018e, code lost:
    
        r25 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x017c, code lost:
    
        r11 = r20[(r13 + 1) + r17];
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x016f, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x017a, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x026b, code lost:
    
        r3 = r3 + 1;
        r12 = r20;
        r11 = r21;
        r13 = r26;
        r14 = r29;
        r35 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0155, code lost:
    
        r11 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d1, code lost:
    
        if (r16[(r11 + 1) + r17] > r16[(r25 - 1) + r17]) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014b, code lost:
    
        r26 = r13;
        r29 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0151, code lost:
    
        if ((r19 & 1) != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0153, code lost:
    
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0157, code lost:
    
        r13 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0158, code lost:
    
        if (r13 > r3) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x015a, code lost:
    
        if (r13 == r12) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x015c, code lost:
    
        if (r13 == r3) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x015e, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016c, code lost:
    
        if (r20[(r13 + 1) + r17] >= r20[(r13 - 1) + r17]) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0171, code lost:
    
        r11 = r20[(r13 - 1) + r17];
        r14 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0183, code lost:
    
        r22 = r10 - ((r6 - r14) - r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0189, code lost:
    
        if (r3 == 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x018b, code lost:
    
        r25 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0190, code lost:
    
        if (r14 != r11) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(int i, MutableObjectList mutableObjectList, MutableObjectList mutableObjectList2, Modifier.Node node, boolean z) {
        int i2;
        MutableObjectList mutableObjectList3;
        MutableObjectList mutableObjectList4;
        int i3;
        int[] iArr;
        int[] iArr2;
        int i4;
        char c;
        char c2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Differ differ = this.j;
        if (differ == null) {
            i2 = i;
            mutableObjectList3 = mutableObjectList;
            mutableObjectList4 = mutableObjectList2;
            differ = new Differ(node, i2, mutableObjectList3, mutableObjectList4, z);
            this.j = differ;
        } else {
            i2 = i;
            mutableObjectList3 = mutableObjectList;
            mutableObjectList4 = mutableObjectList2;
            differ.a = node;
            differ.b = i2;
            differ.c = mutableObjectList3;
            differ.d = mutableObjectList4;
            differ.e = z;
        }
        NodeChain nodeChain = NodeChain.this;
        this.j = null;
        int i16 = mutableObjectList3.b - i2;
        int i17 = mutableObjectList4.b - i2;
        char c3 = 2;
        int i18 = ((i16 + i17) + 1) / 2;
        IntStack intStack = new IntStack(i18 * 3);
        IntStack intStack2 = new IntStack(i18 * 4);
        int i19 = 0;
        intStack2.b(0, i16, 0, i17);
        int i20 = (i18 * 2) + 1;
        int[] iArr3 = new int[i20];
        int[] iArr4 = new int[i20];
        int[] iArr5 = new int[5];
        while (true) {
            int i21 = intStack2.b;
            if (i21 == 0) {
                break;
            }
            char c4 = c3;
            int[] iArr6 = intStack2.a;
            int i22 = i19;
            int i23 = i21 - 1;
            intStack2.b = i23;
            int i24 = iArr6[i23];
            int i25 = i21 - 2;
            intStack2.b = i25;
            int i26 = iArr6[i25];
            int i27 = i21 - 3;
            intStack2.b = i27;
            int i28 = iArr6[i27];
            int i29 = i21 - 4;
            intStack2.b = i29;
            int i30 = iArr6[i29];
            int i31 = i28 - i30;
            int i32 = i20;
            int i33 = i24 - i26;
            int[] iArr7 = iArr3;
            if (i31 >= 1 && i33 >= 1) {
                int i34 = 1;
                int i35 = ((i31 + i33) + 1) / 2;
                int i36 = i32 / 2;
                int i37 = i36 + 1;
                iArr7[i37] = i30;
                iArr4[i37] = i28;
                int i38 = i22;
                while (i38 < i35) {
                    int i39 = i31 - i33;
                    int i40 = i35;
                    iArr = iArr4;
                    if ((Math.abs(i39) & 1) == i34) {
                        i4 = 1;
                    } else {
                        i4 = i22;
                    }
                    int i41 = -i38;
                    int i42 = i4;
                    int i43 = i41;
                    while (true) {
                        if (i43 > i38) {
                            break;
                        }
                        if (i43 != i41) {
                            if (i43 != i38) {
                                i9 = i43;
                                iArr2 = iArr5;
                            } else {
                                i9 = i43;
                                iArr2 = iArr5;
                            }
                            i10 = iArr7[(i9 - 1) + i36];
                            i11 = i10 + 1;
                            int i44 = ((i11 - i30) + i26) - i9;
                            if (i38 == 0) {
                                i12 = 1;
                            } else {
                                i12 = i22;
                            }
                            if (i11 != i10) {
                                i13 = 1;
                            } else {
                                i13 = i22;
                            }
                            int i45 = i44 - (i12 & i13);
                            int i46 = i10;
                            i14 = i44;
                            while (i11 < i28 && i14 < i24 && differ.a(i11, i14)) {
                                i11++;
                                i14++;
                            }
                            iArr7[i36 + i9] = i11;
                            if (i42 == 0) {
                                int i47 = i14;
                                int i48 = i39 - i9;
                                i15 = i31;
                                if (i48 >= i41 + 1 && i48 <= i38 - 1 && iArr[i36 + i48] <= i11) {
                                    iArr2[i22] = i46;
                                    iArr2[1] = i45;
                                    iArr2[c4] = i11;
                                    iArr2[3] = i47;
                                    iArr2[4] = i22;
                                    c = 1;
                                    break;
                                }
                            } else {
                                i15 = i31;
                            }
                            i43 = i9 + 2;
                            iArr5 = iArr2;
                            i31 = i15;
                        } else {
                            i9 = i43;
                            iArr2 = iArr5;
                        }
                        i10 = iArr7[i9 + 1 + i36];
                        i11 = i10;
                        int i442 = ((i11 - i30) + i26) - i9;
                        if (i38 == 0) {
                        }
                        if (i11 != i10) {
                        }
                        int i452 = i442 - (i12 & i13);
                        int i462 = i10;
                        i14 = i442;
                        while (i11 < i28) {
                            i11++;
                            i14++;
                        }
                        iArr7[i36 + i9] = i11;
                        if (i42 == 0) {
                        }
                        i43 = i9 + 2;
                        iArr5 = iArr2;
                        i31 = i15;
                    }
                    if (Math.min(iArr2[c4] - iArr2[i22], iArr2[3] - iArr2[c]) > 0) {
                        int i49 = iArr2[i22];
                        int i50 = iArr2[c];
                        int i51 = iArr2[3] - i50;
                        int i52 = iArr2[c4] - i49;
                        if (i51 != i52) {
                            i52 = Math.min(i52, i51);
                            int i53 = iArr2[4];
                            if (i53 != 0) {
                                i5 = 1;
                            } else {
                                i5 = i22;
                            }
                            int i54 = iArr2[3];
                            c2 = 1;
                            int i55 = iArr2[1];
                            int i56 = i54 - i55;
                            int i57 = iArr2[c4];
                            int i58 = iArr2[i22];
                            if (i56 > i57 - i58) {
                                i6 = 1;
                            } else {
                                i6 = i22;
                            }
                            int i59 = i49 + ((i6 | i5) ^ 1);
                            if (i53 != 0) {
                                i7 = 1;
                            } else {
                                i7 = i22;
                            }
                            if (i54 - i55 > i57 - i58) {
                                i8 = 1;
                            } else {
                                i8 = i22;
                            }
                            i50 += ((i8 ^ 1) | i7) ^ 1;
                            i49 = i59;
                        } else {
                            c2 = 1;
                        }
                        intStack.a(i49, i50, i52);
                    } else {
                        c2 = c;
                    }
                    intStack2.b(i30, iArr2[i22], i26, iArr2[c2]);
                    intStack2.b(iArr2[c4], i28, iArr2[3], i24);
                    c3 = c4;
                    i19 = i22;
                    i20 = i32;
                    iArr3 = iArr7;
                    iArr4 = iArr;
                    iArr5 = iArr2;
                }
            }
            iArr = iArr4;
            iArr2 = iArr5;
            c3 = c4;
            i19 = i22;
            i20 = i32;
            iArr3 = iArr7;
            iArr4 = iArr;
            iArr5 = iArr2;
        }
        int i60 = i19;
        int i61 = intStack.b;
        if (i61 % 3 != 0) {
            InlineClassHelperKt.b("Array size not a multiple of 3");
        }
        if (i61 > 3) {
            i3 = i60;
            intStack.c(i3, i61 - 3);
        } else {
            i3 = i60;
        }
        intStack.a(i16, i17, i3);
        int i62 = i3;
        int i63 = i62;
        int i64 = i63;
        while (i62 < intStack.b) {
            int[] iArr8 = intStack.a;
            int i65 = iArr8[i62];
            int i66 = iArr8[i62 + 2];
            int i67 = i65 - i66;
            int i68 = iArr8[i62 + 1] - i66;
            i62 += 3;
            while (i63 < i67) {
                Modifier.Node node2 = differ.a.o;
                node2.getClass();
                if ((node2.l & 2) != 0) {
                    NodeCoordinator nodeCoordinator = node2.q;
                    nodeCoordinator.getClass();
                    NodeCoordinator nodeCoordinator2 = nodeCoordinator.F;
                    NodeCoordinator nodeCoordinator3 = nodeCoordinator.E;
                    nodeCoordinator3.getClass();
                    if (nodeCoordinator2 != null) {
                        nodeCoordinator2.E = nodeCoordinator3;
                    }
                    nodeCoordinator3.F = nodeCoordinator2;
                    a(nodeChain, differ.a, nodeCoordinator3);
                }
                differ.a = c(node2);
                i63++;
            }
            while (i64 < i68) {
                Modifier.Node b = b((Modifier.Element) differ.d.b(differ.b + i64), differ.a);
                differ.a = b;
                if (differ.e) {
                    Modifier.Node node3 = b.o;
                    node3.getClass();
                    NodeCoordinator nodeCoordinator4 = node3.q;
                    nodeCoordinator4.getClass();
                    LayoutModifierNode c5 = DelegatableNodeKt.c(differ.a);
                    if (c5 != null) {
                        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = new LayoutModifierNodeCoordinator(nodeChain.a, c5);
                        differ.a.X0(layoutModifierNodeCoordinator);
                        a(nodeChain, differ.a, layoutModifierNodeCoordinator);
                        layoutModifierNodeCoordinator.F = nodeCoordinator4.F;
                        layoutModifierNodeCoordinator.E = nodeCoordinator4;
                        nodeCoordinator4.F = layoutModifierNodeCoordinator;
                    } else {
                        differ.a.X0(nodeCoordinator4);
                    }
                    differ.a.O0();
                    differ.a.U0();
                    Modifier.Node node4 = differ.a;
                    MutableObjectIntMap mutableObjectIntMap = NodeKindKt.a;
                    if (!node4.w) {
                        InlineClassHelperKt.b("autoInvalidateInsertedNode called on unattached node");
                    }
                    NodeKindKt.a(node4, -1, 1);
                } else {
                    b.r = true;
                }
                i64++;
            }
            while (true) {
                int i69 = i66 - 1;
                if (i66 > 0) {
                    Modifier.Node node5 = differ.a.o;
                    node5.getClass();
                    differ.a = node5;
                    Modifier.Element element = (Modifier.Element) differ.c.b(differ.b + i63);
                    Modifier.Element element2 = (Modifier.Element) differ.d.b(differ.b + i64);
                    if (!Intrinsics.a(element, element2)) {
                        h(element, element2, differ.a);
                    }
                    i63++;
                    i64++;
                    i66 = i69;
                }
            }
        }
        this.j = differ;
        int i70 = i3;
        for (Modifier.Node node6 = this.e.n; node6 != null && node6 != this.b; node6 = node6.n) {
            i70 |= node6.l;
            node6.m = i70;
        }
    }

    public final void g() {
        LayoutNode layoutNode;
        InnerNodeCoordinator innerNodeCoordinator;
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator;
        Modifier.Node node = this.e.n;
        NodeCoordinator nodeCoordinator = this.c;
        Modifier.Node node2 = node;
        while (true) {
            layoutNode = this.a;
            if (node2 == null) {
                break;
            }
            LayoutModifierNode c = DelegatableNodeKt.c(node2);
            if (c != null) {
                NodeCoordinator nodeCoordinator2 = node2.q;
                if (nodeCoordinator2 != null) {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator2 = (LayoutModifierNodeCoordinator) nodeCoordinator2;
                    LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator2.l0;
                    layoutModifierNodeCoordinator2.H1(c);
                    layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                    if (layoutModifierNode != node2) {
                        OwnedLayer ownedLayer = layoutModifierNodeCoordinator2.c0;
                        layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                        if (ownedLayer != null) {
                            ((GraphicsLayerOwnerLayer) ownedLayer).c();
                            layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                        }
                    }
                } else {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator3 = new LayoutModifierNodeCoordinator(layoutNode, c);
                    node2.X0(layoutModifierNodeCoordinator3);
                    layoutModifierNodeCoordinator = layoutModifierNodeCoordinator3;
                }
                nodeCoordinator.F = layoutModifierNodeCoordinator;
                layoutModifierNodeCoordinator.E = nodeCoordinator;
                nodeCoordinator = layoutModifierNodeCoordinator;
            } else {
                node2.X0(nodeCoordinator);
            }
            node2 = node2.n;
        }
        LayoutNode w = layoutNode.w();
        if (w != null) {
            innerNodeCoordinator = w.O.c;
        } else {
            innerNodeCoordinator = null;
        }
        nodeCoordinator.F = innerNodeCoordinator;
        this.d = nodeCoordinator;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Modifier.Node node = this.f;
        TailModifierNode tailModifierNode = this.e;
        if (node != tailModifierNode) {
            while (true) {
                if (node == null || node == tailModifierNode) {
                    break;
                }
                sb.append(String.valueOf(node));
                if (node.o == tailModifierNode) {
                    sb.append("]");
                    break;
                }
                sb.append(",");
                node = node.o;
            }
        } else {
            sb.append("]");
        }
        return sb.toString();
    }
}
