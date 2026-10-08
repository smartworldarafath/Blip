package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ColorVectorConverterKt$ColorToVector$1 extends Lambda implements Function1<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> {
    public static final ColorVectorConverterKt$ColorToVector$1 k = new Lambda(1);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends Lambda implements Function1<Color, AnimationVector4D> {
        public static final AnonymousClass1 k = new Lambda(1);

        @Override // kotlin.jvm.functions.Function1
        public final Object b(Object obj) {
            long a = Color.a(((Color) obj).a, ColorSpaces.x);
            return new AnimationVector4D(Color.d(a), Color.h(a), Color.g(a), Color.e(a));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        final ColorSpace colorSpace = (ColorSpace) obj;
        return VectorConvertersKt.a(AnonymousClass1.k, new Function1<AnimationVector4D, Color>() { // from class: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj2) {
                AnimationVector4D animationVector4D = (AnimationVector4D) obj2;
                float f = animationVector4D.b;
                float f2 = 0.0f;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                float f3 = 1.0f;
                if (f > 1.0f) {
                    f = 1.0f;
                }
                float f4 = animationVector4D.c;
                float f5 = -0.5f;
                if (f4 < -0.5f) {
                    f4 = -0.5f;
                }
                float f6 = 0.5f;
                if (f4 > 0.5f) {
                    f4 = 0.5f;
                }
                float f7 = animationVector4D.d;
                if (f7 >= -0.5f) {
                    f5 = f7;
                }
                if (f5 <= 0.5f) {
                    f6 = f5;
                }
                float f8 = animationVector4D.a;
                if (f8 >= 0.0f) {
                    f2 = f8;
                }
                if (f2 <= 1.0f) {
                    f3 = f2;
                }
                return new Color(Color.a(ColorKt.a(f, f4, f6, f3, ColorSpaces.x), ColorSpace.this));
            }
        });
    }
}
