package androidx.compose.ui.semantics;

import android.view.autofill.AutofillValue;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.autofill.PlatformAutofillManagerImpl;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsOwner {
    public final LayoutNode a;
    public final EmptySemanticsModifier b;
    public final IntObjectMap c;
    public final MutableObjectList d = new MutableObjectList(2);

    public SemanticsOwner(LayoutNode layoutNode, EmptySemanticsModifier emptySemanticsModifier, MutableIntObjectMap mutableIntObjectMap) {
        this.a = layoutNode;
        this.b = emptySemanticsModifier;
        this.c = mutableIntObjectMap;
    }

    public final SemanticsNode a() {
        return new SemanticsNode(this.b, false, this.a, new SemanticsConfiguration());
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(LayoutNode layoutNode, SemanticsConfiguration semanticsConfiguration) {
        ContentDataType contentDataType;
        ContentDataType contentDataType2;
        String str;
        String str2;
        ToggleableState toggleableState;
        ToggleableState toggleableState2;
        FillableData fillableData;
        FillableData fillableData2;
        Boolean bool;
        boolean z;
        MutableObjectList mutableObjectList = this.d;
        Object[] objArr = mutableObjectList.a;
        int i = mutableObjectList.b;
        for (int i2 = 0; i2 < i; i2++) {
            AndroidAutofillManager androidAutofillManager = (AndroidAutofillManager) ((SemanticsListener) objArr[i2]);
            androidAutofillManager.getClass();
            SemanticsConfiguration y = layoutNode.y();
            int i3 = layoutNode.k;
            PlatformAutofillManagerImpl platformAutofillManagerImpl = androidAutofillManager.j;
            AndroidComposeView androidComposeView = androidAutofillManager.l;
            if (semanticsConfiguration != null) {
                Object e = semanticsConfiguration.j.e(SemanticsProperties.s);
                if (e == null) {
                    e = null;
                }
                contentDataType = (ContentDataType) e;
            } else {
                contentDataType = null;
            }
            if (y != null) {
                Object e2 = y.j.e(SemanticsProperties.s);
                if (e2 == null) {
                    e2 = null;
                }
                contentDataType2 = (ContentDataType) e2;
            } else {
                contentDataType2 = null;
            }
            ContentDataType contentDataType3 = ContentDataType.Companion.a;
            boolean z2 = true;
            if (Intrinsics.a(contentDataType2, contentDataType3)) {
                if (!Intrinsics.a(contentDataType, contentDataType3)) {
                    platformAutofillManagerImpl.b(androidComposeView, i3, false);
                }
            } else {
                if (Intrinsics.a(contentDataType, contentDataType3) && !Intrinsics.a(contentDataType2, contentDataType3)) {
                    platformAutofillManagerImpl.b(androidComposeView, i3, true);
                }
                if (semanticsConfiguration != null) {
                    Object e3 = semanticsConfiguration.j.e(SemanticsProperties.F);
                    if (e3 == null) {
                        e3 = null;
                    }
                    AnnotatedString annotatedString = (AnnotatedString) e3;
                    if (annotatedString != null) {
                        str = annotatedString.k;
                        if (y != null) {
                            Object e4 = y.j.e(SemanticsProperties.F);
                            if (e4 == null) {
                                e4 = null;
                            }
                            AnnotatedString annotatedString2 = (AnnotatedString) e4;
                            if (annotatedString2 != null) {
                                str2 = annotatedString2.k;
                                if (str != str2) {
                                    if (str == null) {
                                        platformAutofillManagerImpl.b(androidComposeView, i3, true);
                                    } else if (str2 == null) {
                                        platformAutofillManagerImpl.b(androidComposeView, i3, false);
                                    } else if (Intrinsics.a(contentDataType2, ContentDataType.Companion.b)) {
                                        platformAutofillManagerImpl.a().notifyValueChanged(androidComposeView, i3, AutofillValue.forText(AutofillUtils_androidKt.a(str2)));
                                    }
                                }
                                if (semanticsConfiguration != null) {
                                    Object e5 = semanticsConfiguration.j.e(SemanticsProperties.L);
                                    if (e5 == null) {
                                        e5 = null;
                                    }
                                    toggleableState = (ToggleableState) e5;
                                } else {
                                    toggleableState = null;
                                }
                                if (y != null) {
                                    Object e6 = y.j.e(SemanticsProperties.L);
                                    if (e6 == null) {
                                        e6 = null;
                                    }
                                    toggleableState2 = (ToggleableState) e6;
                                } else {
                                    toggleableState2 = null;
                                }
                                if (toggleableState != toggleableState2) {
                                    if (toggleableState == null) {
                                        platformAutofillManagerImpl.b(androidComposeView, i3, true);
                                    } else if (toggleableState2 == null) {
                                        platformAutofillManagerImpl.b(androidComposeView, i3, false);
                                    } else if (Intrinsics.a(contentDataType2, ContentDataType.Companion.c)) {
                                        int ordinal = toggleableState2.ordinal();
                                        if (ordinal != 0) {
                                            if (ordinal != 1) {
                                                bool = null;
                                            } else {
                                                bool = Boolean.FALSE;
                                            }
                                        } else {
                                            bool = Boolean.TRUE;
                                        }
                                        if (bool != null) {
                                            platformAutofillManagerImpl.a().notifyValueChanged(androidComposeView, i3, AutofillValue.forToggle(bool.booleanValue()));
                                        }
                                    }
                                }
                                if (semanticsConfiguration != null) {
                                    Object e7 = semanticsConfiguration.j.e(SemanticsProperties.t);
                                    if (e7 == null) {
                                        e7 = null;
                                    }
                                    fillableData = (FillableData) e7;
                                } else {
                                    fillableData = null;
                                }
                                if (y != null) {
                                    Object e8 = y.j.e(SemanticsProperties.t);
                                    if (e8 == null) {
                                        e8 = null;
                                    }
                                    fillableData2 = (FillableData) e8;
                                } else {
                                    fillableData2 = null;
                                }
                                if (!Intrinsics.a(fillableData, fillableData2)) {
                                    if (fillableData == null) {
                                        platformAutofillManagerImpl.b(androidComposeView, i3, true);
                                    } else if (fillableData2 == null) {
                                        platformAutofillManagerImpl.b(androidComposeView, i3, false);
                                    } else {
                                        platformAutofillManagerImpl.a().notifyValueChanged(androidComposeView, i3, ((AndroidFillableData) fillableData2).a);
                                    }
                                }
                            }
                        }
                        str2 = null;
                        if (str != str2) {
                        }
                        if (semanticsConfiguration != null) {
                        }
                        if (y != null) {
                        }
                        if (toggleableState != toggleableState2) {
                        }
                        if (semanticsConfiguration != null) {
                        }
                        if (y != null) {
                        }
                        if (!Intrinsics.a(fillableData, fillableData2)) {
                        }
                    }
                }
                str = null;
                if (y != null) {
                }
                str2 = null;
                if (str != str2) {
                }
                if (semanticsConfiguration != null) {
                }
                if (y != null) {
                }
                if (toggleableState != toggleableState2) {
                }
                if (semanticsConfiguration != null) {
                }
                if (y != null) {
                }
                if (!Intrinsics.a(fillableData, fillableData2)) {
                }
            }
            if (semanticsConfiguration != null && semanticsConfiguration.j.b(SemanticsProperties.r)) {
                z = true;
            } else {
                z = false;
            }
            if (y == null || !y.j.b(SemanticsProperties.r)) {
                z2 = false;
            }
            if (z != z2) {
                MutableIntSet mutableIntSet = androidAutofillManager.q;
                if (z2) {
                    mutableIntSet.b(i3);
                } else {
                    mutableIntSet.f(i3);
                }
            }
        }
    }
}
