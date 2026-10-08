.class public final synthetic Lui;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lui;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lui;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lui;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lui;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lui;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lui;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/ui/ZIndexNode;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iget v2, v2, Landroidx/compose/ui/ZIndexNode;->x:F

    .line 20
    .line 21
    invoke-virtual {p1, p0, v0, v0, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 26
    .line 27
    check-cast v2, Landroidx/work/impl/model/WorkTag;

    .line 28
    .line 29
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->b:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v2}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_1
    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 41
    .line 42
    check-cast v2, Landroidx/work/impl/model/WorkSpec;

    .line 43
    .line 44
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->b:Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v2}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
