<?php
include 'db_connect.php';

// Use prepared statement to avoid SQL injection
$stmt = $conn->prepare("SELECT * FROM genres WHERE id = ?");
$stmt->bind_param("i", $_GET['id']);
$stmt->execute();
$qry = $stmt->get_result()->fetch_assoc();

foreach ($qry as $k => $v) {
	if ($k == 'title') {
		$k = 'ptitle';
	}
	$$k = $v;
}
$stmt->close();
?>

<div class="col-lg-12">
	<div class="row">
		<div class="col-md-4">
			<center>
				<div class="d-flex img-thumbnail bg-gradient-1 position-relative" style="width: 12rem">
					<img src="assets/uploads/<?php echo htmlspecialchars($cover_photo); ?>" alt="" style="object-fit: cover;max-width: 100%;height:14rem">
					<span class="position-absolute" style="bottom:.5em;left:.5em">
						<div class="bg-green rounded-circle d-flex justify-content-center align-items-center" style="width: 2rem;height: 2rem;cursor: pointer;" onclick="play_playlist()">
							<i class="fa fa-play"></i>
						</div>
					</span>
				</div>
			</center>
		</div>
		<div class="col-md-8">
			<h5 class="text-white"> Title: <?php echo ucwords(htmlspecialchars($genre)); ?> </h5>
			<h6 class="text-white border-bottom border-primary"><b class="text-white">Description:</b></h6>
			<div class="text-white">
				<?php echo html_entity_decode($description); ?>
			</div>
			<table class="table bg-black">
				<thead>
					<tr>
						<th></th>
						<th>Title</th>
						<th>Artist</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 0;
					$stmt = $conn->prepare("SELECT * FROM uploads WHERE genre_id = ?");
					$stmt->bind_param("i", $id);
					$stmt->execute();
					$result = $stmt->get_result();
					while ($row = $result->fetch_assoc()) :
					?>
						<tr class="pitem" data-queue="<?php echo $i; ?>" data-id="<?php echo $row['id']; ?>" data-upath="<?php echo htmlspecialchars($row['upath']); ?>">
							<td>
								<span class="btn bg-gradient-success rounded-circle d-flex justify-content-center align-items-center" style="width:30px;height:30px;z-index:2" onclick="play_playlist(<?php echo $i; ?>)">
									<div class="fa fa-play text-white"></div>
								</span>
							</td>
							<td>
								<i class="fa fa-music text-gradient-primary mr-2"></i>
								<?php echo ucwords(htmlspecialchars($row['title'])); ?>
							</td>
							<td>
								<?php echo ucwords(htmlspecialchars($row['artist'])); ?>
							</td>
						</tr>
					<?php
						$i++;
					endwhile;
					$stmt->close();
					?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	function play_playlist($i = 0) {
		var src = {};
		document.querySelectorAll('.pitem').forEach(function(element) {
			var id = element.getAttribute('data-id');
			var upath = element.getAttribute('data-upath');
			var q = element.getAttribute('data-queue');
			src[q] = {
				id: id,
				upath: 'assets/uploads/' + upath
			};
		});
		console.log(src);
		play_music(src, $i);
	}

	document.getElementById('manage_plist').addEventListener('click', function(e) {
		e.preventDefault();
		uni_modal("Manage Playlist Music", 'manage_playlist_items.php?pid=<?php echo $id; ?>');
	});
</script>