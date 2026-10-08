.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/activity/EdgeToEdgeImpl;

.field public final synthetic k:Landroidx/activity/SystemBarStyle;

.field public final synthetic l:Landroidx/activity/SystemBarStyle;

.field public final synthetic m:Lnet/blip/android/MainActivity;

.field public final synthetic n:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/EdgeToEdgeImpl;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Lnet/blip/android/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/c;->j:Landroidx/activity/EdgeToEdgeImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/c;->k:Landroidx/activity/SystemBarStyle;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/activity/c;->l:Landroidx/activity/SystemBarStyle;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/activity/c;->m:Lnet/blip/android/MainActivity;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/activity/c;->n:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    sget v0, Landroidx/activity/EdgeToEdge;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/activity/c;->m:Lnet/blip/android/MainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/activity/c;->k:Landroidx/activity/SystemBarStyle;

    .line 13
    .line 14
    iget-object v0, v2, Landroidx/activity/SystemBarStyle;->c:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iget-object v5, p0, Landroidx/activity/c;->n:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object v3, p0, Landroidx/activity/c;->l:Landroidx/activity/SystemBarStyle;

    .line 36
    .line 37
    iget-object v0, v3, Landroidx/activity/SystemBarStyle;->c:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v1, p0, Landroidx/activity/c;->j:Landroidx/activity/EdgeToEdgeImpl;

    .line 57
    .line 58
    invoke-interface/range {v1 .. v7}, Landroidx/activity/EdgeToEdgeImpl;->a(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
