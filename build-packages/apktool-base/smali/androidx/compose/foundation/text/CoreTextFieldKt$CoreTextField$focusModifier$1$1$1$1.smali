.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1"
    f = "CoreTextField.kt"
    l = {
        0x15e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field public final synthetic p:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic q:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic r:Landroidx/compose/foundation/text/TextLayoutResultProxy;

.field public final synthetic s:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->o:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->p:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->q:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->r:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->s:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->r:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 4
    .line 5
    iget-object v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->s:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->o:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->p:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->q:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->n:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->q:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->r:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 33
    .line 34
    iput v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->n:I

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->p:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 37
    .line 38
    iget-wide v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 39
    .line 40
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->s:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 45
    .line 46
    invoke-interface {v5, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v5, v1, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 51
    .line 52
    iget-object v5, v5, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 53
    .line 54
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ge v4, v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/TextLayoutResult;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-eqz v4, :cond_3

    .line 68
    .line 69
    sub-int/2addr v4, v3

    .line 70
    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/TextLayoutResult;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p1, Landroidx/compose/foundation/text/TextDelegate;->b:Landroidx/compose/ui/text/TextStyle;

    .line 76
    .line 77
    iget-object v3, p1, Landroidx/compose/foundation/text/TextDelegate;->g:Landroidx/compose/ui/unit/Density;

    .line 78
    .line 79
    iget-object p1, p1, Landroidx/compose/foundation/text/TextDelegate;->h:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 80
    .line 81
    invoke-static {v1, v3, p1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    new-instance p1, Landroidx/compose/ui/geometry/Rect;

    .line 86
    .line 87
    const-wide v5, 0xffffffffL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    and-long/2addr v3, v5

    .line 93
    long-to-int v1, v3

    .line 94
    int-to-float v1, v1

    .line 95
    const/4 v3, 0x0

    .line 96
    const/high16 v4, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-direct {p1, v3, v3, v4, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;->o:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 102
    .line 103
    invoke-interface {v1, p1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewRequester;->a(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-ne p0, v0, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object p0, v2

    .line 111
    :goto_1
    if-ne p0, v0, :cond_5

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_5
    return-object v2
.end method
