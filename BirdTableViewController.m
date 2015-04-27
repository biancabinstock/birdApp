//
//  BirdTableViewController.m
//  BirdApp
//


#import "BirdTableViewController.h"
#import "Bird.h"
#import "BirdTableViewCell.h"
#import "DetailViewController.h"

@interface BirdTableViewController ()

@end

@implementation BirdTableViewController

{
    NSArray *birds;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //initialize the bird array
    Bird *bird1 = [Bird new];
    bird1.name = @"Blue Jay";
    bird1.image = @"bluejay";
    
    Bird *bird2 = [Bird new];
    bird2.name = @"Cardinal";
    bird2.image = @"cardinal";
    
    Bird *bird3 = [Bird new];
    bird3.name = @"Eagle";
    bird3.image = @"eagle";
    
    Bird *bird4 = [Bird new];
    bird4.name = @"Hummingbird";
    bird4.image = @"hummingbird";
    
    Bird *bird5 = [Bird new];
    bird5.name = @"Raven";
    bird5.image = @"raven";
    
    Bird *bird6 = [Bird new];
    bird6.name = @"Woodpecker";
    bird6.image = @"woodpecker";
    
    
    birds = [NSArray arrayWithObjects:bird1, bird2, bird3, bird4, bird5, bird6, nil];
    
}



// Uncomment the following line to preserve selection between presentations.
// self.clearsSelectionOnViewWillAppear = NO;

// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
// self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.CLARIFY
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    return [birds count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title"];
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Title"];
    }
    Bird *bird = [birds objectAtIndex:indexPath.row];
    cell.textLabel.text = bird.name;
    cell.backgroundColor = [UIColor clearColor];
    cell.imageView.image = [UIImage imageNamed:bird.image];
    return cell;
}

//get detection of cell
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"row selected");
    DetailViewController *zoomViewController = [[DetailViewController alloc]init];
    Bird *bird = birds[indexPath.row];
    zoomViewController.bird = bird;
    [self.navigationController pushViewController:zoomViewController animated:YES];
    
    
//    ReceiptDetailViewController *controller = [[ReceiptDetailViewController alloc] initWithNibName:@"ReceiptDetailViewController" bundle:nil];
    
//  tried this
//    NSIndexPath *indexDetailPath = [self.tableView indexPathForSelectedRow];
//    DetailViewController *destViewController = ;
//    Bird *bird = [birds objectAtIndex:indexPath.row];
//    destViewController.birdName = bird.name;
//    destViewController.recipeTime = bird.birdImage;
//    
    
//  tried this   
//    Bird *selectedBird = [self.image objectAtIndex:indexPath.row];
//    birds.bird = selectedBird;
//    [self.navigationController pushViewController:controller animated:YES];
    
//    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"word bird" message:@"cell selected" preferredStyle:UIAlertControllerStyleAlert];
    
//    UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
//    [alertView addAction:okayAction];
//    display the hello action message
//    [self presentViewController:alertView animated:YES completion:nil];
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

