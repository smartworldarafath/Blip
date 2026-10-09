.class public final synthetic Lc2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZII)V
    .locals 0

    .line 16
    iput p5, p0, Lc2;->j:I

    iput-object p1, p0, Lc2;->n:Ljava/lang/Object;

    iput-object p2, p0, Lc2;->l:Ljava/lang/Object;

    iput-boolean p3, p0, Lc2;->k:Z

    iput p4, p0, Lc2;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lc2;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lc2;->n:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lc2;->k:Z

    .line 10
    .line 11
    iput-object p3, p0, Lc2;->l:Ljava/lang/Object;

    .line 12
    .line 13
    iput p5, p0, Lc2;->m:I

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V
    .locals 1

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lc2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc2;->k:Z

    iput-object p2, p0, Lc2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lc2;->l:Ljava/lang/Object;

    iput p4, p0, Lc2;->m:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lc2;->j:I

    .line 2
    .line 3
    iget v1, p0, Lc2;->m:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lc2;->k:Z

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, p0, Lc2;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lc2;->n:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    or-int/lit8 p0, v1, 0x1

    .line 28
    .line 29
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {v2, v5, v4, p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 34
    .line 35
    .line 36
    return-object v3

    .line 37
    :pswitch_0
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    check-cast v4, Landroid/net/Uri;

    .line 40
    .line 41
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 42
    .line 43
    check-cast p2, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    or-int/lit8 p0, v1, 0x1

    .line 49
    .line 50
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {v5, v4, v2, p1, p0}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;->a(Landroidx/compose/ui/Modifier;Landroid/net/Uri;ZLandroidx/compose/runtime/Composer;I)V

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    :pswitch_1
    move-object v6, v5

    .line 59
    check-cast v6, Ljava/lang/String;

    .line 60
    .line 61
    move-object v8, v4

    .line 62
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 63
    .line 64
    move-object v9, p1

    .line 65
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 66
    .line 67
    check-cast p2, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x7

    .line 73
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    iget-boolean v7, p0, Lc2;->k:Z

    .line 78
    .line 79
    iget v11, p0, Lc2;->m:I

    .line 80
    .line 81
    invoke-static/range {v6 .. v11}, Lnet/blip/android/ui/onboarding/ComposablesKt;->a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :pswitch_2
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 90
    .line 91
    check-cast p2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    or-int/lit8 p0, v1, 0x1

    .line 97
    .line 98
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {v5, v4, v2, p1, p0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 103
    .line 104
    .line 105
    return-object v3

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
