package androidx.compose.foundation.text.input.internal;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.platform.PlatformTextInputMethodRequest;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import defpackage.d1;
import defpackage.la;
import defpackage.r1;
import defpackage.u2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LegacyTextInputMethodRequest implements PlatformTextInputMethodRequest {
    public final View a;
    public final InputMethodManagerImpl b;
    public LegacyTextFieldState e;
    public TextFieldSelectionManager f;
    public ViewConfiguration g;
    public Rect l;
    public final LegacyCursorAnchorInfoController m;
    public Function1 c = new la(2);
    public Function1 d = new la(3);
    public TextFieldValue h = new TextFieldValue(4, TextRange.b, "");
    public ImeOptions i = ImeOptions.g;
    public final ArrayList j = new ArrayList();
    public final Lazy k = LazyKt.a(LazyThreadSafetyMode.k, new r1(28, this));

    public LegacyTextInputMethodRequest(View view, Function1 function1, InputMethodManagerImpl inputMethodManagerImpl) {
        this.a = view;
        this.b = inputMethodManagerImpl;
        this.m = new LegacyCursorAnchorInfoController(function1, inputMethodManagerImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final RecordingInputConnection a(EditorInfo editorInfo) {
        int i;
        LocaleList localeList;
        int i2;
        int i3;
        TextFieldValue textFieldValue = this.h;
        String str = textFieldValue.a.k;
        long j = textFieldValue.b;
        ImeOptions imeOptions = this.i;
        int i4 = imeOptions.e;
        int i5 = imeOptions.d;
        boolean z = imeOptions.a;
        int i6 = 3;
        if (i4 == 1) {
            if (!z) {
                i = 0;
                editorInfo.imeOptions = i;
                localeList = imeOptions.f;
                if (Intrinsics.a(localeList, LocaleList.l)) {
                    editorInfo.hintLocales = null;
                } else {
                    ArrayList arrayList = new ArrayList(CollectionsKt.m(localeList, 10));
                    Iterator it = localeList.j.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((Locale) it.next()).a);
                    }
                    java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
                    editorInfo.hintLocales = new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length));
                }
                if (i5 != 1) {
                    if (i5 == 2) {
                        editorInfo.imeOptions |= Integer.MIN_VALUE;
                    } else {
                        if (i5 == 3) {
                            i2 = 2;
                        } else {
                            if (i5 != 4) {
                                i2 = 17;
                                if (i5 != 5) {
                                    if (i5 == 6) {
                                        i2 = 33;
                                    } else if (i5 == 7) {
                                        i2 = 129;
                                    } else {
                                        i6 = 18;
                                        if (i5 != 8) {
                                            if (i5 == 9) {
                                                i2 = 8194;
                                            } else if (i5 == 10) {
                                                i2 = 145;
                                            } else if (i5 == 11) {
                                                i2 = 113;
                                            } else if (i5 == 12) {
                                                i2 = 97;
                                            } else if (i5 == 13) {
                                                i2 = 49;
                                            } else if (i5 == 14) {
                                                i2 = 65;
                                            } else if (i5 == 15) {
                                                i2 = 81;
                                            } else if (i5 == 16) {
                                                i2 = 177;
                                            } else if (i5 == 17) {
                                                i2 = 193;
                                            } else if (i5 == 18) {
                                                i2 = 4;
                                            } else {
                                                i2 = 20;
                                                if (i5 != 19) {
                                                    if (i5 == 20) {
                                                        i2 = 36;
                                                    } else if (i5 == 21) {
                                                        i2 = 4098;
                                                    } else if (i5 == 22) {
                                                        i2 = 12290;
                                                    } else if (i5 == 23) {
                                                        i2 = 8210;
                                                    } else if (i5 == 24) {
                                                        i2 = 4114;
                                                    } else if (i5 == 25) {
                                                        i2 = 12306;
                                                    } else {
                                                        u2.l("Invalid Keyboard Type");
                                                        return null;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            i2 = i6;
                        }
                        editorInfo.inputType = i2;
                        if (!z && (i2 & 15) == 1) {
                            editorInfo.inputType = 131072 | i2;
                            if (imeOptions.e == 1) {
                                editorInfo.imeOptions |= 1073741824;
                            }
                        }
                        i3 = editorInfo.inputType;
                        if ((i3 & 15) == 1) {
                            int i7 = imeOptions.b;
                            if (i7 == 1) {
                                editorInfo.inputType = i3 | 4096;
                            } else if (i7 == 2) {
                                editorInfo.inputType = i3 | 8192;
                            } else if (i7 == 3) {
                                editorInfo.inputType = i3 | 16384;
                            }
                            if (imeOptions.c) {
                                editorInfo.inputType |= 32768;
                            }
                            if (Build.VERSION.SDK_INT >= 37) {
                                editorInfo.inputType |= 2097152;
                            }
                        }
                        int i8 = TextRange.c;
                        editorInfo.initialSelStart = (int) (j >> 32);
                        editorInfo.initialSelEnd = (int) (j & 4294967295L);
                        EditorInfoCompat.a(editorInfo, str);
                        editorInfo.imeOptions |= 33554432;
                        if (!StylusHandwriting_androidKt.a && i5 != 7 && i5 != 10 && i5 != 8 && i5 != 23 && i5 != 24 && i5 != 25) {
                            EditorInfoCompat.b(editorInfo, true);
                            editorInfo.setSupportedHandwritingGestures(CollectionsKt.C(d1.l(), d1.A(), d1.y(), d1.z(), d1.B(), d1.C(), d1.D()));
                            editorInfo.setSupportedHandwritingGesturePreviews(ArraysKt.x(new Class[]{d1.l(), d1.A(), d1.y(), d1.z()}));
                        } else {
                            EditorInfoCompat.b(editorInfo, false);
                        }
                        Function1 function1 = LegacyPlatformTextInputServiceAdapter_androidKt.a;
                        if (EmojiCompat.g()) {
                            EmojiCompat.a().l(editorInfo);
                        }
                        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.h, new LegacyTextInputMethodRequest$createInputConnection$1(this), this.i.c, this.e, this.f, this.g);
                        this.j.add(new WeakReference(recordingInputConnection));
                        return recordingInputConnection;
                    }
                }
                i2 = 1;
                editorInfo.inputType = i2;
                if (!z) {
                    editorInfo.inputType = 131072 | i2;
                    if (imeOptions.e == 1) {
                    }
                }
                i3 = editorInfo.inputType;
                if ((i3 & 15) == 1) {
                }
                int i82 = TextRange.c;
                editorInfo.initialSelStart = (int) (j >> 32);
                editorInfo.initialSelEnd = (int) (j & 4294967295L);
                EditorInfoCompat.a(editorInfo, str);
                editorInfo.imeOptions |= 33554432;
                if (!StylusHandwriting_androidKt.a) {
                }
                EditorInfoCompat.b(editorInfo, false);
                Function1 function12 = LegacyPlatformTextInputServiceAdapter_androidKt.a;
                if (EmojiCompat.g()) {
                }
                RecordingInputConnection recordingInputConnection2 = new RecordingInputConnection(this.h, new LegacyTextInputMethodRequest$createInputConnection$1(this), this.i.c, this.e, this.f, this.g);
                this.j.add(new WeakReference(recordingInputConnection2));
                return recordingInputConnection2;
            }
            i = 6;
            editorInfo.imeOptions = i;
            localeList = imeOptions.f;
            if (Intrinsics.a(localeList, LocaleList.l)) {
            }
            if (i5 != 1) {
            }
            i2 = 1;
            editorInfo.inputType = i2;
            if (!z) {
            }
            i3 = editorInfo.inputType;
            if ((i3 & 15) == 1) {
            }
            int i822 = TextRange.c;
            editorInfo.initialSelStart = (int) (j >> 32);
            editorInfo.initialSelEnd = (int) (j & 4294967295L);
            EditorInfoCompat.a(editorInfo, str);
            editorInfo.imeOptions |= 33554432;
            if (!StylusHandwriting_androidKt.a) {
            }
            EditorInfoCompat.b(editorInfo, false);
            Function1 function122 = LegacyPlatformTextInputServiceAdapter_androidKt.a;
            if (EmojiCompat.g()) {
            }
            RecordingInputConnection recordingInputConnection22 = new RecordingInputConnection(this.h, new LegacyTextInputMethodRequest$createInputConnection$1(this), this.i.c, this.e, this.f, this.g);
            this.j.add(new WeakReference(recordingInputConnection22));
            return recordingInputConnection22;
        }
        if (i4 == 0) {
            i = 1;
        } else if (i4 == 2) {
            i = 2;
        } else if (i4 == 6) {
            i = 5;
        } else if (i4 == 5) {
            i = 7;
        } else if (i4 == 3) {
            i = 3;
        } else if (i4 == 4) {
            i = 4;
        } else {
            if (i4 != 7) {
                u2.l("invalid ImeAction");
                return null;
            }
            i = 6;
        }
        editorInfo.imeOptions = i;
        localeList = imeOptions.f;
        if (Intrinsics.a(localeList, LocaleList.l)) {
        }
        if (i5 != 1) {
        }
        i2 = 1;
        editorInfo.inputType = i2;
        if (!z) {
        }
        i3 = editorInfo.inputType;
        if ((i3 & 15) == 1) {
        }
        int i8222 = TextRange.c;
        editorInfo.initialSelStart = (int) (j >> 32);
        editorInfo.initialSelEnd = (int) (j & 4294967295L);
        EditorInfoCompat.a(editorInfo, str);
        editorInfo.imeOptions |= 33554432;
        if (!StylusHandwriting_androidKt.a) {
        }
        EditorInfoCompat.b(editorInfo, false);
        Function1 function1222 = LegacyPlatformTextInputServiceAdapter_androidKt.a;
        if (EmojiCompat.g()) {
        }
        RecordingInputConnection recordingInputConnection222 = new RecordingInputConnection(this.h, new LegacyTextInputMethodRequest$createInputConnection$1(this), this.i.c, this.e, this.f, this.g);
        this.j.add(new WeakReference(recordingInputConnection222));
        return recordingInputConnection222;
    }
}
