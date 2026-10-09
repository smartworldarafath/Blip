.class public final synthetic Ljc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Z

.field public final synthetic m:Lnet/blip/libblip/frontend/Err;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljc;->j:Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;

    .line 5
    .line 6
    iput-object p2, p0, Ljc;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Ljc;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Ljc;->m:Lnet/blip/libblip/frontend/Err;

    .line 11
    .line 12
    iput-object p5, p0, Ljc;->n:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Ljc;->o:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    iget-object v0, p0, Ljc;->j:Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;

    .line 15
    .line 16
    iget-object v1, p0, Ljc;->k:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v2, p0, Ljc;->l:Z

    .line 19
    .line 20
    iget-object v3, p0, Ljc;->m:Lnet/blip/libblip/frontend/Err;

    .line 21
    .line 22
    iget-object v4, p0, Ljc;->n:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    iget-object v5, p0, Ljc;->o:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v7}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;->a(Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method
