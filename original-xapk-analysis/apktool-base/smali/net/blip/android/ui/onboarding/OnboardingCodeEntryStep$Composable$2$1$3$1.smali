.class final Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;
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
    c = "net.blip.android.ui.onboarding.OnboardingCodeEntryStep$Composable$2$1$3$1"
    f = "OnboardingCodeEntryStep.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->n:Landroidx/compose/ui/focus/FocusRequester;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->p:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->p:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->n:Landroidx/compose/ui/focus/FocusRequester;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->o:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    const-string v3, ""

    .line 26
    .line 27
    invoke-direct {p1, v2, v0, v1, v3}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->p:Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;->n:Landroidx/compose/ui/focus/FocusRequester;

    .line 36
    .line 37
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusRequester;->a(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method
