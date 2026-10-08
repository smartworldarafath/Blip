package androidx.compose.foundation.internal;

import android.content.ClipData;
import android.os.Parcel;
import android.text.Annotation;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.Base64;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ClipboardUtils_androidKt {
    /* JADX WARN: Code restructure failed: missing block: B:137:0x00bd, code lost:
    
        r25 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x00bb, code lost:
    
        r24 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.text.style.BaselineShift, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontSynthesis, androidx.compose.ui.text.font.FontWeight, java.lang.String, androidx.compose.ui.text.style.TextGeometricTransform, androidx.compose.ui.graphics.Shadow] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, androidx.compose.foundation.internal.MutableSpanStyle] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final AnnotatedString a(ClipEntry clipEntry) {
        CharSequence text;
        CharSequence charSequence;
        int i;
        Object obj;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        ClipData.Item itemAt = clipEntry.a.getItemAt(0);
        ?? r2 = 0;
        if (itemAt == null || (text = itemAt.getText()) == null) {
            return null;
        }
        if (!(text instanceof Spanned)) {
            return new AnnotatedString(text.toString());
        }
        Spanned spanned = (Spanned) text;
        Annotation[] annotationArr = (Annotation[]) spanned.getSpans(0, spanned.length(), Annotation.class);
        ArrayList arrayList = new ArrayList();
        annotationArr.getClass();
        int length = annotationArr.length - 1;
        if (length >= 0) {
            int i7 = 0;
            while (true) {
                Annotation annotation = annotationArr[i7];
                if (!Intrinsics.a(annotation.getKey(), "androidx.compose.text.SpanStyle")) {
                    charSequence = text;
                    i = i6;
                    obj = r2;
                    i2 = i7;
                } else {
                    int spanStart = spanned.getSpanStart(annotation);
                    int spanEnd = spanned.getSpanEnd(annotation);
                    DecodeHelper decodeHelper = new DecodeHelper(annotation.getValue());
                    long j = Color.h;
                    int i8 = i7;
                    long j2 = TextUnit.c;
                    ?? obj2 = new Object();
                    obj2.a = j;
                    obj2.b = j2;
                    obj2.c = r2;
                    obj2.d = r2;
                    obj2.e = r2;
                    obj2.f = r2;
                    obj2.g = j2;
                    obj2.h = r2;
                    obj2.i = r2;
                    obj2.j = j;
                    obj2.k = r2;
                    obj2.l = r2;
                    while (true) {
                        Parcel parcel = decodeHelper.a;
                        if (parcel.dataAvail() <= 1) {
                            break;
                        }
                        byte readByte = parcel.readByte();
                        if (readByte == 1) {
                            if (parcel.dataAvail() < 8) {
                                break;
                            }
                            int i9 = Color.i;
                            long readLong = parcel.readLong();
                            long j3 = readLong & 63;
                            if (j3 >= 16) {
                                readLong = (readLong & (-64)) | (j3 + 1);
                            }
                            obj2.a = readLong;
                        } else {
                            int i10 = 2;
                            i = i6;
                            if (readByte == 2) {
                                if (parcel.dataAvail() < 5) {
                                    break;
                                }
                                obj2.b = decodeHelper.a();
                                i6 = i;
                            } else {
                                obj = r2;
                                if (readByte == 3) {
                                    if (parcel.dataAvail() < 4) {
                                        break;
                                    }
                                    obj2.c = new FontWeight(parcel.readInt());
                                    i6 = i;
                                    r2 = obj;
                                } else if (readByte == 4) {
                                    if (parcel.dataAvail() < 1) {
                                        break;
                                    }
                                    byte readByte2 = parcel.readByte();
                                    if (readByte2 == 0 || readByte2 != 1) {
                                        i5 = i;
                                    } else {
                                        i5 = 1;
                                    }
                                    obj2.d = new FontStyle(i5);
                                    i6 = i;
                                    r2 = obj;
                                } else if (readByte == 5) {
                                    if (parcel.dataAvail() < 1) {
                                        break;
                                    }
                                    byte readByte3 = parcel.readByte();
                                    if (readByte3 != 0) {
                                        if (readByte3 == 1) {
                                            i10 = 65535;
                                        } else if (readByte3 != 3) {
                                            if (readByte3 == 2) {
                                                i10 = 1;
                                            }
                                        }
                                        obj2.e = new FontSynthesis(i10);
                                        i6 = i;
                                        r2 = obj;
                                    }
                                    i10 = i;
                                    obj2.e = new FontSynthesis(i10);
                                    i6 = i;
                                    r2 = obj;
                                } else {
                                    if (readByte == 6) {
                                        obj2.f = parcel.readString();
                                    } else if (readByte == 7) {
                                        if (parcel.dataAvail() < 5) {
                                            break;
                                        }
                                        obj2.g = decodeHelper.a();
                                    } else if (readByte == 8) {
                                        if (parcel.dataAvail() < 4) {
                                            break;
                                        }
                                        obj2.h = new BaselineShift(parcel.readFloat());
                                    } else if (readByte == 9) {
                                        if (parcel.dataAvail() < 8) {
                                            break;
                                        }
                                        obj2.i = new TextGeometricTransform(parcel.readFloat(), parcel.readFloat());
                                    } else if (readByte == 10) {
                                        if (parcel.dataAvail() < 8) {
                                            break;
                                        }
                                        int i11 = Color.i;
                                        long readLong2 = parcel.readLong();
                                        long j4 = readLong2 & 63;
                                        if (j4 >= 16) {
                                            readLong2 = (readLong2 & (-64)) | (j4 + 1);
                                        }
                                        obj2.j = readLong2;
                                    } else if (readByte == 11) {
                                        if (parcel.dataAvail() < 4) {
                                            break;
                                        }
                                        int readInt = parcel.readInt();
                                        if ((readInt & 2) != 0) {
                                            i3 = 1;
                                        } else {
                                            i3 = i;
                                        }
                                        if ((readInt & 1) != 0) {
                                            i4 = 1;
                                        } else {
                                            i4 = i;
                                        }
                                        TextDecoration textDecoration = TextDecoration.d;
                                        TextDecoration textDecoration2 = TextDecoration.c;
                                        if (i3 != 0 && i4 != 0) {
                                            List C = CollectionsKt.C(textDecoration, textDecoration2);
                                            Integer valueOf = Integer.valueOf(i);
                                            int size = C.size();
                                            for (int i12 = i; i12 < size; i12++) {
                                                valueOf = Integer.valueOf(valueOf.intValue() | ((TextDecoration) C.get(i12)).a);
                                            }
                                            textDecoration = new TextDecoration(valueOf.intValue());
                                        } else if (i3 == 0) {
                                            if (i4 != 0) {
                                                textDecoration = textDecoration2;
                                            } else {
                                                textDecoration = TextDecoration.b;
                                            }
                                        }
                                        obj2.k = textDecoration;
                                    } else if (readByte == 12) {
                                        if (parcel.dataAvail() < 20) {
                                            break;
                                        }
                                        int i13 = Color.i;
                                        long readLong3 = parcel.readLong();
                                        long j5 = readLong3 & 63;
                                        if (j5 >= 16) {
                                            readLong3 = (readLong3 & (-64)) | (j5 + 1);
                                        }
                                        obj2.l = new Shadow(readLong3, (Float.floatToRawIntBits(parcel.readFloat()) << 32) | (Float.floatToRawIntBits(parcel.readFloat()) & 4294967295L), parcel.readFloat());
                                        i8 = i8;
                                    }
                                    i6 = i;
                                    r2 = obj;
                                }
                            }
                        }
                    }
                    int i14 = i8;
                    charSequence = text;
                    arrayList.add(new AnnotatedString.Range(spanStart, spanEnd, new SpanStyle(obj2.a, obj2.b, obj2.c, obj2.d, obj2.e, (FontFamily) null, obj2.f, obj2.g, obj2.h, obj2.i, (LocaleList) null, obj2.j, obj2.k, obj2.l, 49152)));
                    i2 = i14;
                }
                if (i2 == length) {
                    break;
                }
                i7 = i2 + 1;
                text = charSequence;
                i6 = i;
                r2 = obj;
            }
        } else {
            charSequence = text;
        }
        return new AnnotatedString(charSequence.toString(), arrayList, EmptyList.j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.compose.foundation.internal.EncodeHelper, java.lang.Object] */
    public static final ClipEntry b(AnnotatedString annotatedString) {
        List list;
        SpannableString spannableString;
        byte b;
        List list2 = annotatedString.l;
        List list3 = EmptyList.j;
        if (list2 == null) {
            list = list3;
        } else {
            list = list2;
        }
        CharSequence charSequence = annotatedString.k;
        if (!list.isEmpty()) {
            SpannableString spannableString2 = new SpannableString(charSequence);
            ?? obj = new Object();
            obj.a = Parcel.obtain();
            if (list2 == null) {
                list2 = list3;
            }
            int size = list2.size();
            int i = 0;
            SpannableString spannableString3 = spannableString2;
            while (i < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) list2.get(i);
                SpanStyle spanStyle = (SpanStyle) range.a;
                int i2 = range.b;
                int i3 = range.c;
                obj.a.recycle();
                obj.a = Parcel.obtain();
                TextForegroundStyle textForegroundStyle = spanStyle.a;
                long j = spanStyle.l;
                long j2 = spanStyle.h;
                int i4 = i;
                long j3 = spanStyle.b;
                List list4 = list2;
                int i5 = size;
                long b2 = textForegroundStyle.b();
                long j4 = Color.h;
                if (!Color.c(b2, j4)) {
                    obj.a((byte) 1);
                    spannableString = spannableString3;
                    obj.a.writeLong(spanStyle.a.b());
                } else {
                    spannableString = spannableString3;
                }
                long j5 = TextUnit.c;
                byte b3 = 2;
                if (!TextUnit.a(j3, j5)) {
                    obj.a((byte) 2);
                    obj.c(j3);
                }
                FontWeight fontWeight = spanStyle.c;
                if (fontWeight != null) {
                    obj.a((byte) 3);
                    obj.a.writeInt(fontWeight.j);
                }
                FontStyle fontStyle = spanStyle.d;
                if (fontStyle != null) {
                    int i6 = fontStyle.a;
                    obj.a((byte) 4);
                    if (i6 == 0 || i6 != 1) {
                        b = 0;
                    } else {
                        b = 1;
                    }
                    obj.a(b);
                }
                FontSynthesis fontSynthesis = spanStyle.e;
                if (fontSynthesis != null) {
                    int i7 = fontSynthesis.a;
                    obj.a((byte) 5);
                    if (i7 != 0) {
                        if (i7 == 65535) {
                            b3 = 1;
                        } else if (i7 != 1) {
                            if (i7 == 2) {
                                b3 = 3;
                            }
                        }
                        obj.a(b3);
                    }
                    b3 = 0;
                    obj.a(b3);
                }
                String str = spanStyle.g;
                if (str != null) {
                    obj.a((byte) 6);
                    obj.a.writeString(str);
                }
                if (!TextUnit.a(j2, j5)) {
                    obj.a((byte) 7);
                    obj.c(j2);
                }
                BaselineShift baselineShift = spanStyle.i;
                if (baselineShift != null) {
                    float f = baselineShift.a;
                    obj.a((byte) 8);
                    obj.b(f);
                }
                TextGeometricTransform textGeometricTransform = spanStyle.j;
                if (textGeometricTransform != null) {
                    obj.a((byte) 9);
                    obj.b(textGeometricTransform.a);
                    obj.b(textGeometricTransform.b);
                }
                if (!Color.c(j, j4)) {
                    obj.a((byte) 10);
                    obj.a.writeLong(j);
                }
                TextDecoration textDecoration = spanStyle.m;
                if (textDecoration != null) {
                    obj.a((byte) 11);
                    obj.a.writeInt(textDecoration.a);
                }
                Shadow shadow = spanStyle.n;
                if (shadow != null) {
                    obj.a((byte) 12);
                    obj.a.writeLong(shadow.a);
                    long j6 = shadow.b;
                    obj.b(Float.intBitsToFloat((int) (j6 >> 32)));
                    obj.b(Float.intBitsToFloat((int) (j6 & 4294967295L)));
                    obj.b(shadow.c);
                }
                SpannableString spannableString4 = spannableString;
                spannableString4.setSpan(new Annotation("androidx.compose.text.SpanStyle", Base64.encodeToString(obj.a.marshall(), 0)), i2, i3, 33);
                i = i4 + 1;
                spannableString3 = spannableString4;
                list2 = list4;
                size = i5;
            }
            charSequence = spannableString3;
        }
        return new ClipEntry(ClipData.newPlainText("plain text", charSequence));
    }
}
