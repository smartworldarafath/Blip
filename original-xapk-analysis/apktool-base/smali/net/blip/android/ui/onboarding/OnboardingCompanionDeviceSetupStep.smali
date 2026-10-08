.class public final Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;->a:Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, -0x68939f03

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p3, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    new-instance v0, La0;

    .line 35
    .line 36
    const/16 v1, 0x18

    .line 37
    .line 38
    invoke-direct {v0, p3, v1, p0, p1}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    new-instance p0, Lkotlin/NotImplementedError;

    .line 45
    .line 46
    const-string p1, "An operation is not implemented: Remove this step from core entirely"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
