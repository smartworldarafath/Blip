.class public final Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;->a:Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v5, p2

    .line 5
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p2, -0x6f9a75

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p2, v0

    .line 23
    :goto_0
    or-int/2addr p2, p3

    .line 24
    and-int/lit8 v1, p2, 0x3

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v1, v0, :cond_1

    .line 29
    .line 30
    move v0, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v2

    .line 33
    :goto_1
    and-int/2addr p2, v3

    .line 34
    invoke-virtual {v5, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    new-instance p2, Lnc;

    .line 41
    .line 42
    invoke-direct {p2, v2, p1}, Lnc;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    const v0, 0x1c6293b9

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/16 v6, 0x6db6

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    sget-object v0, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    sget-object v1, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 58
    .line 59
    sget-object v2, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 60
    .line 61
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 62
    .line 63
    invoke-static/range {v0 .. v7}, Lnet/blip/android/ui/onboarding/ComposablesKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    new-instance v0, La0;

    .line 77
    .line 78
    const/16 v1, 0x1b

    .line 79
    .line 80
    invoke-direct {v0, p3, v1, p0, p1}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 84
    .line 85
    :cond_3
    return-void
.end method
