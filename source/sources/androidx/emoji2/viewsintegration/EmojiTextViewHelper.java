package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EmojiTextViewHelper {
    public final HelperInternal a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class HelperInternal {
        public abstract InputFilter[] a(InputFilter[] inputFilterArr);

        public abstract void b(boolean z);

        public abstract void c(boolean z);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class HelperInternal19 extends HelperInternal {
        public final TextView a;
        public final EmojiInputFilter b;
        public boolean c = true;

        public HelperInternal19(TextView textView) {
            this.a = textView;
            this.b = new EmojiInputFilter(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            if (!this.c) {
                SparseArray sparseArray = new SparseArray(1);
                for (int i = 0; i < inputFilterArr.length; i++) {
                    InputFilter inputFilter = inputFilterArr[i];
                    if (inputFilter instanceof EmojiInputFilter) {
                        sparseArray.put(i, inputFilter);
                    }
                }
                if (sparseArray.size() == 0) {
                    return inputFilterArr;
                }
                int length = inputFilterArr.length;
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    if (sparseArray.indexOfKey(i3) < 0) {
                        inputFilterArr2[i2] = inputFilterArr[i3];
                        i2++;
                    }
                }
                return inputFilterArr2;
            }
            int length2 = inputFilterArr.length;
            int i4 = 0;
            while (true) {
                EmojiInputFilter emojiInputFilter = this.b;
                if (i4 < length2) {
                    if (inputFilterArr[i4] == emojiInputFilter) {
                        return inputFilterArr;
                    }
                    i4++;
                } else {
                    InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                    System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                    inputFilterArr3[length2] = emojiInputFilter;
                    return inputFilterArr3;
                }
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void b(boolean z) {
            if (z) {
                d();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void c(boolean z) {
            this.c = z;
            d();
            TextView textView = this.a;
            textView.setFilters(a(textView.getFilters()));
        }

        public final void d() {
            TextView textView = this.a;
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            if (this.c) {
                if (!(transformationMethod instanceof EmojiTransformationMethod) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                    transformationMethod = new EmojiTransformationMethod(transformationMethod);
                }
            } else if (transformationMethod instanceof EmojiTransformationMethod) {
                transformationMethod = ((EmojiTransformationMethod) transformationMethod).j;
            }
            textView.setTransformationMethod(transformationMethod);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SkippingHelper19 extends HelperInternal {
        public final HelperInternal19 a;

        public SkippingHelper19(TextView textView) {
            this.a = new HelperInternal19(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            if (!EmojiCompat.g()) {
                return inputFilterArr;
            }
            return this.a.a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void b(boolean z) {
            if (!EmojiCompat.g()) {
                return;
            }
            this.a.b(z);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void c(boolean z) {
            boolean g = EmojiCompat.g();
            HelperInternal19 helperInternal19 = this.a;
            if (!g) {
                helperInternal19.c = z;
            } else {
                helperInternal19.c(z);
            }
        }
    }

    public EmojiTextViewHelper(TextView textView) {
        this.a = new SkippingHelper19(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.a.a(inputFilterArr);
    }

    public final void b(boolean z) {
        this.a.b(z);
    }

    public final void c(boolean z) {
        this.a.c(z);
    }
}
