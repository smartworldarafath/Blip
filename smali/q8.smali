.class public final synthetic Lq8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq8;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lq8;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lq8;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lq8;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    .line 11
    .line 12
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 13
    .line 14
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p4, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p4, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lg3;

    .line 30
    .line 31
    const/4 p2, 0x5

    .line 32
    invoke-direct {p1, p0, p2}, Lg3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 33
    .line 34
    .line 35
    const p0, -0x18070c6a

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 p1, 0x6

    .line 43
    invoke-static {p0, p3, p1}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_0
    check-cast p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;

    .line 50
    .line 51
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    .line 54
    .line 55
    check-cast p3, Ljava/lang/String;

    .line 56
    .line 57
    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    .line 58
    .line 59
    sget-object p1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->k:[Ljava/lang/String;

    .line 60
    .line 61
    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 62
    .line 63
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p4}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->a(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    .line 73
    .line 74
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
